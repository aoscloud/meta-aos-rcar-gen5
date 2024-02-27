#WA: Create loop device for mount /var/aos/workdirs,...
#VPF doesn't support additional partition
#In bootargs, we will choose /dev/loop1 for update rootfs
#And treat full FOTA update the same as incremental 
FILESEXTRAPATHS:prepend := "${THISDIR}/initramfs-framework:"

SRC_URI += " \
    file://createdisk \
"

PACKAGES += " \
    initramfs-module-createdisk \
"

SUMMARY:initramfs-module-createdisk = "create loop device"
RDEPENDS:initramfs-module-createdisk = "${PN}-base e2fsprogs"
FILES:initramfs-module-createdisk = "/init.d/94-createdisk"

do_install:append() {
    install -m 0755 ${WORKDIR}/createdisk ${D}/init.d/94-createdisk
}
