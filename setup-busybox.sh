#!/bin/bash
# How to install. based for busybox distro
# curl -SL https://raw.githubusercontent.com/ziozzang/alpine_on_any_distro/master/setup-busybox.sh | sh

ALPINE_URL="https://nl.alpinelinux.org/alpine/v3.6/releases/x86_64/alpine-minirootfs-3.6.0-x86_64.tar.gz"

TAR_BIN="/bin/tar"

cd /
curl -o /tmp/alpine.tar.gz ${ALPINE_URL}
cd /tmp
gunzip alpine.tar.gz

mkdir -p /tmp/alpine
cd /tmp/alpine

tar -xvf /tmp/alpine.tar
mv -f lib/* /lib/
mv -f sbin/apk /sbin/
mv -f usr/share/apk /usr/share/
mv -f etc/apk /etc/
mv -f var/cache/apk /var/cache/
mv -f var/lib/apk /var/lib/
cd /

rm -rf /tmp/alpine*

apk update
apk upgrade
#apk add -f libc6-compat
