#!/bin/bash
#
# Rebuild macos-aarch64/libvulkan_kosmickrisp.dylib from Mesa.
#
# `vendor-vulkan.yml` vendors the *loader* and says outright that it does not
# build the driver — this is the missing half of that sentence. KosmicKrisp is
# Mesa's Vulkan-on-Metal driver, there is no upstream binary to download, and a
# Homebrew `mesa` is not a substitute (see "Why not Homebrew" below), so a bump
# means a real Mesa build. Run this, check the result, commit the dylib.
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
echo "==> to publish it, replace the single commit on the driver branch:"
cat <<PUBLISH

    # In a scratch clone, NOT this working tree: an orphan checkout empties the
    # tree it is standing in.
    git checkout --orphan driver-new
    git rm -rf --cached . >/dev/null && rm -rf ./*
    cp $BUILT libvulkan_kosmickrisp.dylib
    echo "\$(cat $WORK/mesa/VERSION)" > VERSION
    git add libvulkan_kosmickrisp.dylib VERSION
    git commit -m "KosmicKrisp \$(cat $WORK/mesa/VERSION)"
    git push --force origin driver-new:driver

One commit, force-pushed, on purpose: that branch is storage rather than
history, and letting it accumulate would put back exactly the cost it exists to
avoid. The consequence is that the driver it replaces is gone — if a bump turns
out bad the way back is to rebuild the older Mesa with this script, which is why
VERSION is committed beside it.

Note that a default clone still fetches every branch, so this keeps the driver
at one revision rather than out of clones entirely; --single-branch skips it.
PUBLISH
