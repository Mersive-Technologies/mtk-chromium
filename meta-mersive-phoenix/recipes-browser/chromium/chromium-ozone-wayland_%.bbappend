FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

PR:append = "+mersive"

SRC_URI += "file://chromium-wayland-no-output.diff"
SRC_URI += "file://0001-increase-webrtc-queues-to-avoid-drops-on-initialization.patch"

# Override the version to 132.0.6834.230
PV = "132.0.6834.230"
