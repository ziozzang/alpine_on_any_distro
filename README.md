# What is this?
Add "Alpine's Package manager"(apk cli) on any Linux Distro.

You can get state-of-arts alpines packages to your linux, with almost zero-cost or effort.

Alpine's packages version is up-to-date, so you can get newer version of packaged binary. 

# Target platform
Tested on Any Docker based linux. (only tested for x86_64 based)

maybe works with not only docker images but also bare-metal.

## tested docker images

* Debian
* Ubuntu
* OpenSuse
* RHEL7
  * registry.access.redhat.com/rhel7-atomic
  * registry.access.redhat.com/rhel7
* CentOS

# Install

Just run command.

```
curl -sL bit.ly/alpineapk | sh
```

# License
MIT License. use your own risk.

# Limitation
* Need curl command. (ubuntu and debian, opensuse minimal docker images has no curl. you have to install it.)
* Basicllay generic linux distro use basic library as "GLIBC". but alpine use "MUSL". There's no binary compatability between libc level.
* gcc compile is not compatable between Generic Linux Distro like (RHEL/CentOS/Debian/Ubuntu) and Alpine
