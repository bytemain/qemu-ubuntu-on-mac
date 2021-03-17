# qemu-img create -f qcow2 ./ubuntu-server1.qcow2 40G
qemu-img create -f raw $(cat ./IMAGE_LOCATION) 40G
