#/bin/bash

DESTDIR="$(dirname $(readlink -e ${BASH_SOURCE[0]}) )"
WORKDIR="$(mktemp -d ${BUILDDIR}/rel.XXXXXXXXXX)"
SRCDIR="${BUILDDIR}/tmp/deploy/deb/armv8a"
NAME="$(basename ${SRCDIR}/chromium-ozone-wayland_*deb .deb)"

cleanup ()
{
    [ -d ${WORKDIR} ] && rm -rf ${WORKDIR}
}
trap cleanup EXIT

(
    cd ${DESTDIR}

    rm -rf ${DESTDIR}/${NAME}.tar.gz
    dpkg-deb -R ${SRCDIR}/${NAME}.deb ${WORKDIR}/
    tar cvzf ${DESTDIR}/${NAME}.tar.gz -C ${WORKDIR} ./usr
)