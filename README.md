# What is this?
Alpine's Package manager(apk cli) on any Linux Distro.

# Target platform
Tested on RHEL / Centos Docker based

## tested docker images

* registry.access.redhat.com/rhel7-atomic
* registry.access.redhat.com/rhel7
* centos


# Install

Just run command.

```
curl -sL bit.ly/alpineapk | sh
```


# Limitation
* RHEL / Centos use "GLIBC". but alpine use "MUSL".
* gcc compile is not compatable between RHEL/CentOS and Alpine
