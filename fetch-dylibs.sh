#!/usr/bin/env bash
#
# Fetch the macOS dylibs under macos-aarch64/ from the GitHub release.
#
#   ./fetch-dylibs.sh              # fetch whichever are missing or do not verify
#   ./fetch-dylibs.sh --force      # re-download even the ones that verify
#   ./fetch-dylibs.sh --no-fetch   # fail instead of reaching the network
#
# Run once per checkout. Re-running costs two hashes and no network.
#
# ## Why these are not in git
#
# The driver is 15 MB and is replaced whenever Mesa is worth bumping; the loader
# is 1.4 MB and changes about once a year. Git keeps every version of a tracked
# file for ever, so committing either to main charges every clone of this
# repository -- and of anything using it as a submodule -- for binaries nobody
# will run again, including the clones that will never touch macOS.
#
# The driver used to live on a `driver` orphan branch, one force-pushed commit
# however many bumps it had seen. That was the wrong shape, for a reason worth
# recording: a branch keeps a binary out of a *checkout* but not out of the
# *object database*. `git clone` fetches every `refs/heads/*` unconditionally and
# there is no way to mark a branch "do not clone me", so the one-revision trick
# capped the cost rather than removing it.
#
# A release asset is not reachable from any ref. A clone pays nothing, and the
# only machines that download one are the ones assembling a macOS bundle.
#
# ## What needs them
#
# Nothing links against either -- manifest.json's `linked-libraries` is empty on
# every target -- so a build succeeds without them and only fails at runtime.
# The driver fails quietly: vk::findBundledDriver treats "no bundled driver" as
# a normal outcome and falls back to the loader's own ICD discovery
# (vk/driver.c3), so a consumer runs on whatever other ICD is installed, or
# reports no devices. A missing loader is louder -- vk::init falls through its
# candidate list to whatever the system has, and macOS has no system Vulkan --
# but neither mentions a missing file, which is why build.sh and the release
# workflow both call this rather than leaving it to the reader.
set -euo pipefail

here="$(cd "$(dirname "$0")" && pwd)"
cd "$here"

REPO="${VULKAN_C3_REPO:-tonis2/Vulkan.c3}"
TAG="${VULKAN_C3_TAG:-latest}"
CACHE="${VULKAN_C3_CACHE:-${XDG_CACHE_HOME:-$HOME/.cache}/vulkan.c3}"

pin="dylibs.sha256"
dir="macos-aarch64"

force=0
allow_fetch=1
while [[ $# -gt 0 ]]; do
    case "$1" in
        --force)    force=1; shift ;;
        --no-fetch) allow_fetch=0; shift ;;
        --repo)     REPO="${2:?--repo needs owner/name}"; shift 2 ;;
        --tag)      TAG="${2:?--tag needs a name}"; shift 2 ;;
        -h|--help)  sed -n '2,9p' "$0" | sed 's/^# \{0,1\}//'; exit 0 ;;
        *) echo "fetch-dylibs: unknown argument '$1'" >&2; exit 1 ;;
    esac
done

sha256_of() {
    if command -v sha256sum >/dev/null 2>&1; then
        sha256sum "$1" | awk '{print $1}'
    else
        shasum -a 256 "$1" | awk '{print $1}'
    fi
}

# Per-dylib expectations, set into the caller's locals. The hash already proves
# the bytes, so these checks are about the PIN being wrong rather than the
# download being wrong -- a plausible-looking file committed to $pin by mistake.
# An unknown name is an error rather than a skip: a pin line nothing validates
# is exactly the mistake these exist to catch.
expectations() {
    case "$1" in
        libvulkan_kosmickrisp.dylib)
            min_size=10000000
            symbol=_vk_icdGetInstanceProcAddr
            builder="vendor-kosmickrisp.sh (a full Mesa build, on a Mac)" ;;
        libvulkan.1.dylib)
            min_size=1000000
            symbol=_vkGetInstanceProcAddr
            builder="the vendor-vulkan.yml workflow" ;;
        *)  echo "fetch-dylibs: $pin lists '$1', which this script has no checks for." >&2
            echo "  Add a case to expectations() before pinning a new dylib." >&2
            exit 1 ;;
    esac
}

fetch_one() {
    local name="$1" want="$2" version="$3"
    local dest="$dir/$name" cached="$CACHE/$want"
    local min_size symbol builder
    expectations "$name"

    if [[ $force -eq 0 && -f "$dest" ]] && [[ "$(sha256_of "$dest")" == "$want" ]]; then
        echo "fetch-dylibs: $name present"
        return 0
    fi

    if [[ ! -f "$cached" || "$(sha256_of "$cached")" != "$want" ]]; then
        if [[ $allow_fetch -eq 0 ]]; then
            echo "fetch-dylibs: $name is not cached and --no-fetch was given" >&2
            exit 1
        fi
        local url="https://github.com/$REPO/releases/download/$TAG/$name"
        echo "fetch-dylibs: downloading $url"

        # To a temporary first: a half-written file left at the cache key would
        # be trusted by the next run, and a 404 body is a perfectly valid small
        # file. </dev/null so curl cannot eat anything the caller is reading.
        if ! curl -fsSL --retry 3 --retry-delay 2 -o "$cached.part" "$url" </dev/null; then
            rm -f "$cached.part"
            echo "fetch-dylibs: could not download $name from the '$TAG' release." >&2
            echo "  Check it is attached:  gh release view $TAG -R $REPO" >&2
            echo "  If it is not, it has to be built by $builder" >&2
            echo "  and uploaded once:" >&2
            echo "    gh release upload $TAG -R $REPO --clobber $dir/$name" >&2
            exit 1
        fi

        local got
        got="$(sha256_of "$cached.part")"
        if [[ "$got" != "$want" ]]; then
            rm -f "$cached.part"
            echo "fetch-dylibs: $name does not match $pin." >&2
            echo "  expected $want" >&2
            echo "  got      $got" >&2
            echo "  Either the asset was replaced without updating $pin, or it is" >&2
            echo "  not the file it claims to be." >&2
            exit 1
        fi
        mv "$cached.part" "$cached"
    else
        echo "fetch-dylibs: $name from cache"
    fi

    cp "$cached" "$dest"
    chmod 755 "$dest"

    local size
    size="$(wc -c < "$dest" | tr -d ' ')"
    [[ "$size" -ge "$min_size" ]] || {
        rm -f "$dest"
        echo "fetch-dylibs: $size bytes is too small to be $name -- removed." >&2
        exit 1; }

    # nm only reads Mach-O where the host toolchain knows the format, so on a
    # Linux runner this is skipped rather than failed.
    if nm -gU "$dest" >/dev/null 2>&1; then
        nm -gU "$dest" | grep -q "$symbol" || {
            rm -f "$dest"
            echo "fetch-dylibs: $name exports no ${symbol#_}, which is the one symbol" >&2
            echo "  it is loaded for -- removed." >&2
            exit 1; }
    fi

    echo "fetch-dylibs: wrote $dest ($size bytes, $version)"
}

[[ -f "$pin" ]] || { echo "fetch-dylibs: $pin is missing" >&2; exit 1; }
mkdir -p "$dir" "$CACHE"

# Read the whole pin file up front rather than looping over a redirect: the
# fetches below have their own stdin needs.
mapfile -t entries < <(awk '$1 !~ /^#/ && NF >= 3 { print $1, $2, $3 }' "$pin")
[[ ${#entries[@]} -gt 0 ]] || { echo "fetch-dylibs: $pin lists no dylibs" >&2; exit 1; }

for entry in "${entries[@]}"; do
    read -r want name version <<< "$entry"
    fetch_one "$name" "$want" "$version"
done
