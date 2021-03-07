Manual adjustments
===

- edit **fstab** (noatime option on mounted FS)
- edit **rc.conf** (hostname, networks incl. GW, NTP server, enabled software)
- edit **rtadvd.conf** in according IPv6 network (prefix, interface, domain, router IP)
- edit **wpa_supplicant.conf** (WLAN networks and WPA2 passwords)

- run `touch /var/log/all.log` for **syslog.conf**
