# qemu-ubuntu on MacOS

```sh
brew install tuntap
brew install qemu
# if cannot use tap, pls use MacPorts's qemu
# sudo port install qemu
```

if you use mac 11 and above, run:

```sh
./sign.sh
```


and create image, then start。

need change `start.sh` cdrom.

```sh
./create-img.sh
./start.sh
```

configure host-only network.

![](https://i.loli.net/2021/03/16/JM3Gklz76KiPLcs.jpg)

this can make you connect ubuntu server by ip:

```sh
ssh artin@192.168.10.2
```

If you need to SSH onto the system, you can add the following settings to the QEMU command: 

```sh
-net user,hostfwd=tcp::2222-:22 -net nic
```

Then you can connect via ssh user@loclhost -p 2222.


## Setup NAT Network

[](https://rambling-ideas.salessandri.name/setup-nat-network-for-qemu-in-mac-osx/)
