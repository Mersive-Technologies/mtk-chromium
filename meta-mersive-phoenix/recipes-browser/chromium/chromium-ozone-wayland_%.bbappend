FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

PR:append = "+mersive"

SRC_URI += "file://chromium-wayland-no-output.diff"

# Override the version to 132.0.6834.228
PV = "132.0.6834.228"
