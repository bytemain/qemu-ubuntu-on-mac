sudo qemu-system-x86_64 \
  -m 4G \
  -usb \
  -smp 6,maxcpus=16,sockets=2,cores=4,threads=2 \
  -drive file=./ubuntu-server1.qcow2,if=virtio \
  -machine type=q35,accel=hvf \
  -cpu Nehalem-v1 \
  -device usb-tablet \
  -nic user,model=virtio \
  -netdev tap,id=secnet0,script=./tap-up.sh,downscript=./tap-down.sh \
  -device e1000,netdev=secnet0,mac=52:55:00:d1:55:01 \
  -vga virtio \
  -display default,show-cursor=on \
  "$@"
