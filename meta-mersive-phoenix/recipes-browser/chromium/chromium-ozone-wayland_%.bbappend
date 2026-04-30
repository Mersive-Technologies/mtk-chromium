FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

PR:append = "+mersive"

SRC_URI += "file://chromium-wayland-no-output.diff"
SRC_URI += "file://0001-increase-webrtc-queues-to-avoid-drops-on-initialization.patch"
SRC_URI += "file://0002-mediatek-hw-codecs-132-Re-Add-patch-to-avoid-V4L2-decoder-memory-leak.patch"
