#!/bin/sh

[ X"$(id -u)" = X"0" ] || { printf "\n  Oops, needs to be run as root due to chroot\n\n"; exit 1; }
BASEDIR="$(dirname "$(readlink -f "${0}")")"

mkdir -p $BASEDIR/native-x86_64/var/lib
cp /etc/resolv.conf $BASEDIR/native-x86_64/etc
cp /etc/hosts $BASEDIR/native-x86_64/etc
setarch x86_64 chroot $BASEDIR/native-x86_64 /bin/env-install.sh "${@}"
