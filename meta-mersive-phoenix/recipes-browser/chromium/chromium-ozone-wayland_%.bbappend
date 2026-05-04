FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

PR:append = "+mersive"

SRC_URI += "file://chromium-wayland-no-output.diff"
SRC_URI += "file://0001-increase-webrtc-queues-to-avoid-drops-on-initialization.patch \
			file://0002-mediatek-hw-codecs-132-Re-Add-patch-to-avoid-V4L2-decoder-memory-leak.patch \
			file://0003-tweak-rust-flags-for-yocto-kirkstone.patch \
			file://0004-media-gpu-v4l2-Reset-decoder-when-reinitializing.patch \
"
