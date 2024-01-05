# disable dnsmasq daemon and install binary only

pkg_postinst_ontarget () {
	oe_runmake "PREFIX=${D}${prefix}" \
               "BINDIR=${D}${bindir}" \
               "MANDIR=${D}${mandir}" \
               install
}
FILES:${PN}:append = " /lib/systemd/system/dnsmasq.service"

SYSTEMD_SERVICE:${PN} = ""
SYSTEMD_AUTO_ENABLE ?= "disable"
