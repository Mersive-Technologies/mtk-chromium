FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

PR:append = "+mersive"

SRC_URI += "file://chromium-wayland-no-output.diff"
SRC_URI += "file://0001-increase-webrtc-queues-to-avoid-drops-on-initialization.patch \
            file://0002-mediatek-hw-codecs-132-media-gpu-v4l2-V4L2StatefulVD-Prevent-poll-tasks-from-accumulating.patch \
"
