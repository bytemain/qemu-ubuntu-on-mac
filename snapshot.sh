# https://wiki.qemu.org/Documentation/CreateSnapshot
mkdir -p snapshots
qemu-img create -f qcow2 -b ubuntu-server1.qcow2 "./snapshots/$1.img"
