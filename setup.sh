#!/bin/bash

BUSYBOX_BIN_URL="https://www.busybox.net/downloads/binaries/1.30.0-i686/busybox"
ALPINE_URL="https://nl.alpinelinux.org/alpine/v3.9/releases/x86_64/alpine-minirootfs-3.9.2-x86_64.tar.gz"

TAR_BIN="/bin/tar"

cd /
curl -o /tmp/alpine.tgz ${ALPINE_URL}

# if there's no tar utility, use busybox's tar utility
if [ ! -f ${TAR_BIN} ] ; then
  curl -o /tmp/busybox ${BUSYBOX_BIN_URL}
  chmod +x /tmp/busybox
  
  mkdir -p /tmp/alpine
  cd /tmp/alpine
  /tmp/busybox tar -xzvf /tmp/alpine.tgz
  mv -f lib/* /lib/
  mv -f sbin/apk /sbin/
  mv -f usr/share/apk /usr/share/
  mv -f etc/apk /etc/
  mv -f var/cache/apk /var/cache/
  mv -f var/lib/apk /var/lib/
  mv -f bin/busybox /bin/
  #cp bin/* /bin/
  #cp sbin/* /sbin/
  cd /
else
  #Fetch Alpine base system
  ${TAR_BIN} -xvzf /tmp/alpine.tgz --wildcards --no-anchored 'lib' '*apk*' 'bin/busybox'
fi

rm -rf /tmp/alpine*

apk update
apk upgrade
#apk add -f libc6-compat
