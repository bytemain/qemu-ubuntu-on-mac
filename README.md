# qemu-ubuntu on MacOS

```sh
brew install tuntap
# brew's qemu cannot use tap, pls use MacPorts's qemu
sudo port install qemu
```

if you use MacOSX 11 above, run:

```sh
./sign.sh
```

and create image, then start it。

first set you image location:

```sh
echo ./ubuntu-20.10-live-server-amd64.iso > CDROM_LOCATION
echo ./ubuntu-server.image > IMAGE_LOCATION
```

set bootpd.

```sh
./install.sh
```

after install completed, you can use:

```sh
./run.sh
```

## Setup NAT Network

[](https://rambling-ideas.salessandri.name/setup-nat-network-for-qemu-in-mac-osx/)
