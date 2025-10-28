FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

PR:append = "+mersive"

SRC_URI += "file://chromium-wayland-no-output.diff"
SRC_URI += "file://0001-increase-webrtc-queues-to-avoid-drops-on-initialization.patch"
