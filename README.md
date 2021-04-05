# Virtualize Ubuntu on MacOS With QEMU

This document will help you create a Ubuntu virtual machine on MacOS with QEMU, in my experience, its performance
are slower than both of VMWare and VirtualBox, but higher than Docker.

This repo provided some scripts to simplify the process.

## prepare

first you need install `QEMU`, I recommend to use macport install QEMU, because brew's QEMU version cannot use
tap(``).

```sh
sudo port install qemu
```

if you use MacOSX 11 above, you need sign `QEMU` in order to use the virtualization function.

run:

```sh
./sign.sh
```

## create

then you need create a disk:

```sh
echo ./ubuntu-server.image > IMAGE_LOCATION
```

and set you image location:

```sh
echo ./ubuntu-20.10-live-server-amd64.iso > CDROM_LOCATION
```

then run `install.sh`, this scripts will create disk file and start your image.

```sh
./install.sh
```

you will see a window opened, you need setup Ubuntu by you own.

after install completed, you can use:

```sh
./run.sh
```

## Setup NAT Network

## Setup Host-only Network

## Reference

1. [Using QEMU to create a Ubuntu 20.04 Desktop VM on macOS](https://www.arthurkoziel.com/qemu-ubuntu-20-04/)
2. [Virtualize Ubuntu Desktop on macOS with QEMU](https://github.com/jwillikers/blog/blob/601780578375cfacd3873f3c530e7ec8cbe08d35/_posts/2020-09-07-Virtualize%20Ubuntu%20Desktop%20on%20macOS%20With%20QEMU/2020-09-07-Virtualize%20Ubuntu%20Desktop%20on%20macOS%20With%20QEMU.adoc)
3. [Host only networking set up for QEMU](https://alberand.com/host-only-networking-set-up-for-qemu-hypervisor.html)
4. [Setup NAT Network for QEMU in Mac OSX](https://rambling-ideas.salessandri.name/setup-nat-network-for-qemu-in-mac-osx/)
5. [QEMU on OS X 10.5 running Linux guest with networking](https://forums.macrumors.com/threads/qemu-on-os-x-10-5-running-linux-guest-with-networking.1974866/)
