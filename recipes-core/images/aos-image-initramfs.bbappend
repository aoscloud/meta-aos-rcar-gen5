AOS_INITRAMFS_SCRIPTS += " \
    initramfs-module-lvm \
    initramfs-module-rundir \
    initramfs-module-debug \
    initramfs-module-createdisk \
    lvm2 \
"

#VPF doesn't support addtional partition
AOS_INITRAMFS_SCRIPTS:remove = "initramfs-module-opendisk"

python () {
    if 'selinux' in d.getVar('DISTRO_FEATURES').split():
        d.setVar('INITRAMFS_MAXSIZE', '196608')
}

#Rename initramfs to be recognized by VPF
IMAGE_LINK_NAME="rootfs"
