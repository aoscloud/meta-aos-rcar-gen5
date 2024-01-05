do_install:append() {
    # meta-renesas does strange things with fstab file to fix own problems
    # with NFS. We don't have such problems, so we need to revert some changes
    # made by Renesas. Namely, we want /var/volatile to be owned by root.
    sed -i "s/uid=65534,gid=65534/defaults/" ${D}${sysconfdir}/fstab

    #WA: Delete Aos storage device's mountpoint
    sed -i '/\# Aos partitions/d' ${D}${sysconfdir}/fstab
    sed -i '/^\/dev\/aosvg/d' ${D}${sysconfdir}/fstab
}
