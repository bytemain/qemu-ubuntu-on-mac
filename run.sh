#!/bin/sh

if (($EUID != 0)); then
  echo "Please run as root"
  exit
fi
qemu-system-x86_64 \
  -m 4G \
  -usb \
  -device usb-tablet \
  -vga virtio \
  -smp 4,cores=2,threads=2 \
  -drive file="$(cat ./IMAGE_LOCATION)",format=raw,if=virtio \
  -machine type=q35,accel=hvf \
  -cpu Nehalem-v1 \
  -net nic,model=virtio \
  -net tap,script=./qemu-ifup.sh,downscript=./qemu-ifdown.sh \
  -device virtio-net,netdev=vmnic -netdev user,id=vmnic \
  "$@"

# -hda ./ubuntu-server1.qcow2 \
# -drive file=ubuntu-desktop-18.04.qcow2,if=virtio \
# -nic user,model=virtio \
# -net user,hostfwd=tcp::2222-:22 \
# -netdev tap,id=secnet0,script=./tap-up.sh,downscript=./tap-down.sh \
# -device e1000,netdev=secnet0,mac=52:55:00:d1:55:01 \
