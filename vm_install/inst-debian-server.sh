#!/bin/bash
source debian.env
sudo virt-install \
--name ${VM_NAME} \
--memory ${VM_RAMSIZE} \
--vcpus ${VM_CORES} \
--os-variant=${VM_OS} \
--virt-type=kvm \
--network network=${VM_NET},model=virtio \
--graphics none \
--disk path=${VM_IMG},size=${VM_DISKSIZE},bus=virtio,format=qcow2 \
--location ${VM_URL} \
--extra-args="console=ttyS0"
