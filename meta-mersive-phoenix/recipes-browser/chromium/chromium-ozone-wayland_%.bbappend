FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

PR:append = "+mersive"

SRC_URI += "file://chromium-wayland-no-output.diff"

