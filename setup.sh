#!/bin/bash

BUSYBOX_BIN_URL="https://www.busybox.net/downloads/binaries/1.26.2-i686/busybox"
ALPINE_URL="https://nl.alpinelinux.org/alpine/v3.6/releases/x86_64/alpine-minirootfs-3.6.0-x86_64.tar.gz"

TAR_BIN="/bin2/tar"

# if there's no tar utility, use busybox's tar utility
if [ ! -f /bin/tar ]; then
  curl -o /tmp/busybox ${BUSYBOX_BIN_URL}
  chmod +x /tmp/busybox
  ln -s /tmp/busybox /tmp/tar
  TAR_BIN="/tmp/tar"
fi

#Fetch Alpine base system
curl -o /tmp/alpine.tgz ${ALPINE_URL}
mv /bin /bin2
${TAR_BIN} -xvzf /tmp/alpine.tgz --wildcards --no-anchored 'lib' '*apk*' 'bin'
apk update
apk add -f libc6-compat
