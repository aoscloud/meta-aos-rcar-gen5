# meta-aos-rcar-gen5
This repository contains Renesas R-Car Gen5-specific Yocto layers for AosEdge distro on Virtual Platform (VPF).
## Status
This is a release 1.0.0 of AosEdge development product for R-Car Gen5 virtual device on virtual platform. Notably, the Gen5 virtual device, at present, exclusively supports only single-node baremetal architecture (exclude XEN implementation), aligning this release accordingly.

This release provides the following features:
- Provisioning unit to AosCloud
- Update software from AosCloud to virtual device
- Update firmware from AosCloud to virtual device
- Gather node/system information

## Limitations and workarounds
1. No multiple partitions support for installing AosCore onto device.  
Workarounds:
- Disable AOS disk encryption: Remove initramfs-module-opendisk, decryption modules (softhsm, optee).
- Add custom initramfs-module-createdisk which creates virtual disk for AOS's workdirs mountpoint.

2. Since VPF doesn't support multi-partitions storage, data within /var folder will be overwritten whenever FOTA action is performed.  
Workaround:
- Mount /var to virtual disk.

3. No reboot.service support.  
Workaround:
- Add 0001-Reboot-manually.patch which forces the Update Manager to wait for a reboot trigger from VPF instead of rebooting automatically.
