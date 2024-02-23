FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
SRCREV = "6ce6e8a0aaa5769f0bd0644c247cd027b2801974"
BRANCH = "v5.10.147/rcar-5.2.0.rc11_vpf.rc4"

SRC_URI:remove = "${RENESAS_BSP_URL};nocheckout=1;branch=${BRANCH};protocol=https \
    file://0001-arm64-dts-renesas-r8a779f0-Add-Native-device-support.patch \
    file://0002-arm64-dts-renesas-r8a779f0-Enable-IPMMU-main-and-HC-.patch \
    file://0003-arm64-dts-renesas-r8a779f0-Enable-IPMMU-for-PCIe0-1.patch \
    file://0004-arm64-dts-renesas-r8a779f0-Enable-IPMMU-for-eMMC.patch \
"

SRC_URI:append = " git://${TOPDIR}/../repo/linux-bsp;nocheckout=1;branch=${BRANCH};protocol=file \
	file://0002-net-ethernet-renesas-rswitch-Update-driver-to-match-.patch \
	file://0002-net-ethernet-renesas-rswitch-Disable-reset-controlle.patch \
"

#KERNEL_VERSION_SANITY_SKIP="1"
LINUX_VERSION = "5.10.147"
KERNEL_DEVICETREE:remove = "renesas/r8a779f0-spider-native.dtb"
