#!/usr/bin/env bash
#
# Fetch macos-aarch64/libvulkan_kosmickrisp.dylib from the GitHub release.
#
#   ./fetch-driver.sh              # fetch it if it is missing or does not verify
#   ./fetch-driver.sh --force      # re-download even if it verifies
#   ./fetch-driver.sh --no-fetch   # fail instead of reaching the network
#
# Run once per checkout. Re-running costs one hash and no network.
#
# ## Why this is not in git
#
# The driver is 15 MB and is replaced whenever Mesa is worth bumping. Git keeps
# every version of a tracked file for ever, so committing it to main would
# charge every clone of this repository -- and of anything using it as a
# submodule -- for drivers nobody will run again.
#
# It used to live on a `driver` orphan branch, one force-pushed commit however
# many bumps it had seen. That was the wrong shape, for a reason worth recording:
# a branch keeps a binary out of a *checkout* but not out of the *object
# database*. `git clone` fetches every `refs/heads/*` unconditionally and there
# is no way to mark a branch "do not clone me", so the one-revision trick capped
# the cost at 15 MB rather than removing it -- every clone still paid, including
# the ones that would never run macOS.
#
# A release asset is not reachable from any ref. A clone pays nothing, and the
# only machines that download it are the ones assembling a macOS bundle.
#
# ## What needs it
#
# Nothing links against it -- manifest.json's `linked-libraries` is empty on
# every target -- so a build succeeds without it and only fails at runtime, and
# quietly: vk::findBundledDriver treats "no bundled driver" as a normal outcome
# and falls back to the loader's own ICD discovery (vk/driver.c3). So a consumer
# runs on whatever other ICD is installed, or reports no devices. Neither
# mentions a missing file, which is why build.sh and the release workflow both
# call this rather than leaving it to the reader.
#
# The Khronos loader beside it, macos-aarch64/libvulkan.1.dylib, IS committed:
# 1.4 MB, changed about once a year, and vendored by vendor-vulkan.yml. Only the
# driver is big and churny enough to be worth fetching.
set -euo pipefail

here="$(cd "$(dirname "$0")" && pwd)"
cd "$here"

REPO="${VULKAN_C3_REPO:-tonis2/Vulkan.c3}"
TAG="${VULKAN_C3_TAG:-latest}"
CACHE="${VULKAN_C3_CACHE:-${XDG_CACHE_HOME:-$HOME/.cache}/vulkan.c3}"

name="libvulkan_kosmickrisp.dylib"
dest="macos-aarch64/$name"
pin="driver.sha256"

force=0
allow_fetch=1
while [[ $# -gt 0 ]]; do
    case "$1" in
        --force)    force=1; shift ;;
        --no-fetch) allow_fetch=0; shift ;;
        --repo)     REPO="${2:?--repo needs owner/name}"; shift 2 ;;
        --tag)      TAG="${2:?--tag needs a name}"; shift 2 ;;
        -h|--help)  sed -n '2,8p' "$0" | sed 's/^# \{0,1\}//'; exit 0 ;;
        *) echo "fetch-driver: unknown argument '$1'" >&2; exit 1 ;;
    esac
done

sha256_of() {
    if command -v sha256sum >/dev/null 2>&1; then
        sha256sum "$1" | awk '{print $1}'
    else
        shasum -a 256 "$1" | awk '{print $1}'
    fi
}

[[ -f "$pin" ]] || { echo "fetch-driver: $pin is missing" >&2; exit 1; }
want="$(awk -v n="$name" '$1 !~ /^#/ && $2 == n { print $1 }' "$pin")"
[[ -n "$want" ]] || { echo "fetch-driver: $pin has no line for $name" >&2; exit 1; }

mkdir -p macos-aarch64 "$CACHE"

if [[ $force -eq 0 && -f "$dest" ]] && [[ "$(sha256_of "$dest")" == "$want" ]]; then
    echo "fetch-driver: $name present"
    exit 0
fi

cached="$CACHE/$want"
if [[ ! -f "$cached" || "$(sha256_of "$cached")" != "$want" ]]; then
    if [[ $allow_fetch -eq 0 ]]; then
        echo "fetch-driver: $name is not cached and --no-fetch was given" >&2
        exit 1
    fi
    url="https://github.com/$REPO/releases/download/$TAG/$name"
    echo "fetch-driver: downloading $url"

    # To a temporary first: a half-written file left at the cache key would be
    # trusted by the next run, and a 404 body is a perfectly valid small file.
    if ! curl -fsSL --retry 3 --retry-delay 2 -o "$cached.part" "$url"; then
        rm -f "$cached.part"
        echo "fetch-driver: could not download $name from the '$TAG' release." >&2
        echo "  Check it is attached:  gh release view $TAG -R $REPO" >&2
        echo "  If this is the first run after the move off the 'driver' branch," >&2
        echo "  upload the dylib to that release once -- vendor-kosmickrisp.sh" >&2
        echo "  prints the command." >&2
        exit 1
    fi

    got="$(sha256_of "$cached.part")"
    if [[ "$got" != "$want" ]]; then
        rm -f "$cached.part"
        echo "fetch-driver: $name does not match $pin." >&2
        echo "  expected $want" >&2
        echo "  got      $got" >&2
        echo "  Either the asset was replaced without updating $pin, or it is" >&2
        echo "  not the file it claims to be." >&2
        exit 1
    fi
    mv "$cached.part" "$cached"
else
    echo "fetch-driver: $name from cache"
fi

cp "$cached" "$dest"
chmod 755 "$dest"

# The hash already proves the bytes, so these two are about the PIN being wrong
# rather than the download being wrong -- a plausible-looking file committed to
# driver.sha256 by mistake. nm only reads Mach-O where the host toolchain knows
# the format, so on a Linux runner it is skipped rather than failed.
size="$(wc -c < "$dest" | tr -d ' ')"
[[ "$size" -gt 10000000 ]] || {
    rm -f "$dest"
    echo "fetch-driver: $size bytes is not a driver -- removed." >&2
    exit 1; }

if nm -gU "$dest" >/dev/null 2>&1; then
    nm -gU "$dest" | grep -q _vk_icdGetInstanceProcAddr || {
        rm -f "$dest"
        echo "fetch-driver: exports no vk_icdGetInstanceProcAddr, which is the one" >&2
        echo "  symbol vk::loadDriver looks for -- removed." >&2
        exit 1; }
fi

echo "fetch-driver: wrote $dest ($size bytes, mesa $(awk '/^# mesa /{print $3}' "$pin"))"
