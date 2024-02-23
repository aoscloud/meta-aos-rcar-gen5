FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:append = " \
	file://wait-network-override.conf \
"

do_install:append() {
	install -d ${D}${sysconfdir}/systemd/system/systemd-networkd-wait-online.service.d
	install -m 0644 ${WORKDIR}/wait-network-override.conf ${D}${sysconfdir}/systemd/system/systemd-networkd-wait-online.service.d
}
