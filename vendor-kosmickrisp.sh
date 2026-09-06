#!/bin/bash
#
# Rebuild macos-aarch64/libvulkan_kosmickrisp.dylib from Mesa.
#
# `vendor-vulkan.yml` vendors the *loader* and says outright that it does not
# build the driver — this is the missing half of that sentence. KosmicKrisp is
# Mesa's Vulkan-on-Metal driver, there is no upstream binary to download, and a
# Homebrew `mesa` is not a substitute (see "Why not Homebrew" below), so a bump
# means a real Mesa build. Run this, check the result, upload the dylib.
#
# The dylib is NOT committed. It is 15 MB and git keeps every version of a
# tracked file for ever, so it is a release asset pinned by `dylibs.sha256` and
# fetched by `fetch-dylibs.sh` -- see that script for why an asset and not the
# `driver` branch this replaced. The publish block at the bottom is both steps.
#
# ## Two things about the dependencies that are not obvious
#
# **LLVM is needed to build and is not linked into the result.** KosmicKrisp
# compiles internal OpenCL-C kernels, so Mesa puts `with_kosmickrisp_vk` in
# `with_driver_using_cl`, which forces `with_clc`, which forces LLVM. That
# whole chain is a host tool: the finished dylib names no LLVM at all.
#
# **SPIRV-Tools must be the static libraries from the LunarG macOS SDK.** They
# install to /usr/local and are what `--prefer-static` links. Homebrew's are
# shared, and linking those would put /opt/homebrew paths inside a dylib whose
# whole job is to travel inside a .c3l zip to machines that have no Homebrew.
#
# ## Why not Homebrew's mesa
#
# It builds llvmpipe and zink alongside KosmicKrisp with zstd, llvm and
# spirv-tools as runtime dependencies, so its driver is bound to /opt/homebrew.
# The check at the bottom of this script is exactly the one it fails.
#
set -euo pipefail

MESA_REF="${1:-main}"
WORK="${WORK:-$(mktemp -d)}"
HERE="$(cd "$(dirname "$0")" && pwd)"

echo "==> working in $WORK"

# 1. Dependencies. cmake and pkgconf are meson's; llvm/libclc/spirv-llvm-translator
#    are the CLC chain above. The Vulkan SDK (static SPIRV-Tools in /usr/local)
#    is assumed present — https://vulkan.lunarg.com/sdk/home#mac
brew install meson ninja cmake pkgconf llvm libclc spirv-llvm-translator
python3 -m venv "$WORK/venv"
"$WORK/venv/bin/pip" install -q mako pyyaml packaging

# 2. Mesa. The archive rather than a clone: no history is wanted and a shallow
#    clone of Mesa is slower than the tarball.
curl -L "https://gitlab.freedesktop.org/mesa/mesa/-/archive/$MESA_REF/mesa-$MESA_REF.tar.gz" \
  -o "$WORK/mesa.tar.gz"
tar xzf "$WORK/mesa.tar.gz" -C "$WORK"
mv "$WORK/mesa-$MESA_REF" "$WORK/mesa"
echo "==> Mesa $(cat "$WORK/mesa/VERSION")"

export PATH="$WORK/venv/bin:/opt/homebrew/opt/llvm/bin:/opt/homebrew/bin:$PATH"
export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig:/opt/homebrew/opt/libclc/share/pkgconfig:/opt/homebrew/opt/spirv-llvm-translator/lib/pkgconfig:/opt/homebrew/lib/pkgconfig"

# 3. Configure. docs/drivers/kosmickrisp.rst's line, but release rather than
#    debug and stripped, because this one ships.
meson setup "$WORK/build" "$WORK/mesa" \
  --buildtype=release \
  -Db_ndebug=true \
  -Dstrip=true \
  -Dplatforms=macos \
  -Dvulkan-drivers=kosmickrisp \
  -Dgallium-drivers= \
  -Dopengl=false \
  -Dzstd=disabled \
  --prefer-static

ninja -C "$WORK/build"
BUILT="$WORK/build/src/kosmickrisp/vulkan/libvulkan_kosmickrisp.dylib"

# 4. The two things that decide whether it is shippable.
echo "==> link dependencies (must be /usr/lib and /System only)"
otool -L "$BUILT" | tail -n +2 | grep -vE '@rpath|/usr/lib/|/System/' && {
  echo "REFUSED: links something outside the system"; exit 1
}
echo "==> entry point the bindings dlopen (vk/driver.c3)"
nm -gU "$BUILT" | grep -q _vk_icdGetInstanceProcAddr || {
  echo "REFUSED: no vk_icdGetInstanceProcAddr"; exit 1
}

cp "$BUILT" "$HERE/macos-aarch64/libvulkan_kosmickrisp.dylib"
chmod 755 "$HERE/macos-aarch64/libvulkan_kosmickrisp.dylib"
echo "==> replaced macos-aarch64/libvulkan_kosmickrisp.dylib"
echo "    Confirm with: VK_DRIVER_FILES=<icd.json> vulkaninfo | grep driverInfo"
echo
echo "==> to publish it:"
cat <<PUBLISH

    # 1. Upload the dylib to the rolling \`latest\` release, replacing the one
    #    already there. Assets are not reachable from any ref, so this costs a
    #    clone of this repository nothing -- which is the whole reason it is not
    #    the \`driver\` orphan branch it used to be. A branch stays out of a
    #    checkout but not out of the object database, and \`git clone\` fetches
    #    every branch whether the machine will ever run macOS or not.
    gh release upload latest -R tonis2/Vulkan.c3 --clobber \\
        macos-aarch64/libvulkan_kosmickrisp.dylib

    # 2. Commit the new hash and version in dylibs.sha256, replacing the
    #    libvulkan_kosmickrisp.dylib line. NOT optional: fetch-dylibs.sh
    #    verifies against that file and refuses anything else, so until this
    #    lands every fetch -- including the release workflow's -- fails on the
    #    mismatch. That is the intended failure; the alternative is shipping a
    #    driver nobody chose.
    printf '%s  libvulkan_kosmickrisp.dylib  mesa-%s\\n' \\
        "\$(shasum -a 256 macos-aarch64/libvulkan_kosmickrisp.dylib | awk '{print \$1}')" \\
        "$(cat "$WORK/mesa/VERSION")"

The release keeps one driver, the current one. If a bump turns out bad the way
back is to rebuild the older Mesa with this script, which is why the version is
recorded in dylibs.sha256 beside the hash.
PUBLISH
