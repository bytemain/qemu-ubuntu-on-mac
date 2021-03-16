if (( $EUID != 0 )); then
    echo "Please run as root"
    exit
fi
qemu-system-x86_64 \
  -m 4G \
  -usb \
  -smp 4,cores=2,threads=2 \
  -drive file=./ubuntu-server1.qcow2,if=virtio \
  -machine type=q35,accel=hvf \
  -cpu Nehalem-v1 \
  -device usb-tablet \
  -net nic,model=virtio \
  -net tap,script=./qemu-ifup.sh,downscript=./qemu-ifdown.sh \
  "$@"

  # -hda ./ubuntu-server1.qcow2 \
  # -drive file=ubuntu-desktop-18.04.qcow2,if=virtio \
  # -nic user,model=virtio \
  # -net user,hostfwd=tcp::2222-:22 \
  # -netdev tap,id=secnet0,script=./tap-up.sh,downscript=./tap-down.sh \
  # -device e1000,netdev=secnet0,mac=52:55:00:d1:55:01 \
