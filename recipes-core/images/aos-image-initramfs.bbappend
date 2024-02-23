AOS_INITRAMFS_SCRIPTS = " \
    initramfs-module-lvm \
    initramfs-module-rundir \
    initramfs-module-createdisk \
    lvm2 \
	initramfs-module-aosupdate \
	initramfs-module-udev \
"

#Rename initramfs to be recognized by VPF
IMAGE_LINK_NAME="rootfs"
