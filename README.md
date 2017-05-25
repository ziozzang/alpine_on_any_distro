# alpine apk package manager on any Linux distro.
Alpine's Package manager on any Linux Distro.

# Target platform
Tested on RHEL / Centos Docker based

# Install

```
curl -L bit.ly/alpineapk | sh
```

# tested docker images

* registry.access.redhat.com/rhel7-atomic
* registry.access.redhat.com/rhel7
* centos

# Limitation
* RHEL / Centos use "GLIBC". but alpine use "MUSL".
* gcc compile is not compatable between RHEL/CentOS and Alpine
