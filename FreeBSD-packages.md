Packages I use and I recommend to use on every FreeBSD server
===

Essential packages on all servers
---
- `bash`
- `bash-completion`
- `bind-tools`
- `bsdstats`
- `ca_root_nss`
- `curl`
- `ddrescue`
- `dhcpdump`
- `dmidecode`
- `fdupes`
- `flashrom`
- `fping`
- `gawk`
- `git`
- `hw-probe`
- `iftop`
- `iperf3`
- `iso-codes`
- `joe`
- `jq`
- `links`
- `lsof`
- `lynx`
- `mc`
- `ngrep`
- `nmap`
- `openssl`
- `pciids`
- `pciutils`
- `perl5`
- `python38`
- `rsync`
- `screen`
- `sendmail`
- `smartmontools`
- `sudo`
- `tcpdump`
- `tcping`
- `tcptraceroute`
- `tuptime`
- `usbutils`
- `wget`
- `zabbix54-agent`
```
pkg install bash bash-completion bind-tools bsdstats ca_root_nss curl ddrescue dhcpdump dmidecode fdupes flashrom \
fping gawk git hw-probe iftop iperf3 iso-codes joe jq links lsof lynx mc ngrep nmap openssl pciids pciutils perl5 \
python38 rsync screen sendmail smartmontools sudo tcpdump tcping tcptraceroute tuptime usbutils wget zabbix54-agent
```


Optional packages for ZFS
---
- `zfs-stats`
```
pkg install zfs-stats
```


Optional packages for DB server (MariaDB, MySQL, SQLite)
---
- `mariadb105-client` (**`pkg lock` recommended**)
- `mariadb105-server` (**`pkg lock` recommended**)
- `mysql57-client`
- `mysql57-server`
- `mysqltuner`
- `portupgrade`
- `sqlite3`
```
pkg install mariadb105-client mariadb105-server mysql57-client mysql57-server mysqltuner portupgrade sqlite3
```


Optional packages for Web server (Apache, Nginx, PHP)
---
- `apache24`
- `mod_php74`
- `nginx`
- `php74`
- `portupgrade`
```
pkg install apache24 mod_php74 nginx php74 portupgrade
```


Optional packages for Mail server (TLS, Auth, AV, DKIM, AntiSpam, Greylist, IMAP, POP3)
---
- `cclient`
- `clamav`
- `cyrus-sasl-saslauthd`
- `imap-uw`
- `maildrop`
- `milter-greylist`
- `opendkim`
- `portupgrade`
- `procmail`
- `sendmail` (**ports by hand compiled version possibly needed for all the features (TLS, DKIM, Auth, ...)**)
- `spamass-milter`
- `spamassassin`
```
pkg install cclient clamav cyrus-sasl-saslauthd imap-uw maildrop milter-greylist opendkim portupgrade \
procmail sendmail spamass-milter spamassassin
```


Optional packages for Router (DHCP, DHCPv6)
---
- `isc-dhcp44-server`
- `net-snmp`
- `portupgrade`
- `unbound`
```
pkg install isc-dhcp44-server net-snmp portupgrade unbound
```


Optional packages for VPN server (OpenVPN, DHCP, caching DNS)
---
- `easy-rsa`
- `isc-dhcp44-server`
- `openvpn`
- `portupgrade`
- `unbound`
```
pkg install easy-rsa isc-dhcp44-server openvpn portupgrade unbound
```


Optional packages for VxLAN server (ZeroTier, DHCP, caching DNS)
---
- `isc-dhcp44-server`
- `unbound`
- `zerotier`
```
pkg install isc-dhcp44-server unbound zerotier
```


Optional packages for DNS, Zabbix, Samba, Multimedia, ...
---
- `bind916` - Authoritative DNS
- `bonnie++` - File system benchmark
- `ffmpeg` - DLNA
- `fusefs-exfat` - exFAT support
- `fusefs-ntfs` - MS Windows NTFS support
- `fusefs-ext2` - Linux ext2/3/4 support
- `libcoap` - Ikea Tradfri communication
- `libidn2`
- `mediatomb` - DLNA
- `mosquitto` - IOT
- `net-snmp` - Network monitoring
- `nut` - UPS monitoring
- `openipmi`
- `portupgrade`
- `py38-certbot` - Let's Encrypt
- `py38-certbot-dns-rfc2136` - Let's Encrypt
- `py38-pip`
- `py38-speedtest-cli` - Ookla's speedtest unofficial client
- `samba413` - SMB file sharing
- `ser2net` - RS232 communication over IP
- `sysbench` - CPU/file system/SQL benchmark (**ports by hand compiled version needed for use with MariaDB**)
- `wordpress`
- `zabbix54-frontend` - Zabbix
- `zabbix54-proxy` - Zabbix (**ports by hand compiled version needed for use with MariaDB or SQLite, although needed for some check methods**)
- `zabbix54-server` - Zabbix (**ports by hand compiled version needed for use with MariaDB or SQLite, although needed for some check methods**)
```
pkg install bind916 ffmpeg fusefs-exfat fusefs-ntfs fusefs-ext2 libcoap mediatomb mosquitto net-snmp nut\
openipmi portupgrade py38-certbot py38-certbot-dns-rfc2136 py38-pip py38-speedtest-cli samba413 ser2net\
zabbix54-frontend zabbix54-proxy zabbix54-server
```
- official Ookla's speedtest client
```
pkg add "https://install.speedtest.net/app/cli/ookla-speedtest-1.0.0-freebsd.pkg"
```
