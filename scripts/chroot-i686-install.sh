#!/bin/sh

[ X"$(id -u)" = X"0" ] || { printf "\n  Oops, needs to be run as root due to chroot\n\n"; exit 1; }
BASEDIR="$(dirname "$(readlink -f "${0}")")"

mkdir -p $BASEDIR/native-i386/var/lib
cp /etc/resolv.conf $BASEDIR/native-i386/etc
cp /etc/hosts $BASEDIR/native-i386/etc
setarch i486 chroot $BASEDIR/native-i386 /bin/env-install.sh "${@}"
