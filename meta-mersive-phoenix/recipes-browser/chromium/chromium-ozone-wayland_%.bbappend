FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

# Distinguish Mersive patched build from upstream
PV = "132.0.6834.245-1"
PR:append = "+mersive"
	
# chromium.inc sets S and SRC_URI using ${PV}, which now resolves to 132.0.6834.245-1.
# The actual tarball and its extracted directory still use the upstream version 132.0.6834.245.

# Remove the broken URL (${PV} here evaluates to 132.0.6834.245-1 and addcorrect tarball URL with the real upstream version hardcoded
SRC_URI:remove = "https://gitlab.collabora.com/mediatek/aiot/chromium/chromium-tarballs/-/jobs/artifacts/${PV}/raw/out/chromium-${PV}-linux.tar.xz?job=build-tarball;downloadfilename=chromium-${PV}-linux.tar.xz"
SRC_URI:prepend = "https://gitlab.collabora.com/mediatek/aiot/chromium/chromium-tarballs/-/jobs/artifacts/132.0.6834.245/raw/out/chromium-132.0.6834.245-linux.tar.xz?job=build-tarball;downloadfilename=chromium-132.0.6834.245-linux.tar.xz "

# Tarball extracts to chromium-132.0.6834.245/, not chromium-132.0.6834.245-1/
S = "${WORKDIR}/chromium-132.0.6834.245"

SRC_URI += "file://chromium-wayland-no-output.diff"
SRC_URI += "file://0001-increase-webrtc-queues-to-avoid-drops-on-initialization.patch \
			file://0002-mediatek-hw-codecs-132-Re-Add-patch-to-avoid-V4L2-decoder-memory-leak.patch \
			file://0003-tweak-rust-flags-for-yocto-kirkstone.patch \
"
