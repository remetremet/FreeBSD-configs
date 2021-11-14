Basic steps (non ZFS)
---

```
touch /var/log/all.log
mkdir /usr/local/etc/newsyslog.conf.d
chmod 755 /usr/local/etc/newsyslog.conf.d

mkdir /data
chmod 755 /data

# Samba 4
mkdir /var/locks
chmod 755 /var/locks
```


Basic steps (ZFS)
---

```
touch /var/log/all.log
mkdir /usr/local/etc/newsyslog.conf.d
chmod 755 /usr/local/etc/newsyslog.conf.d

zfs create -o mountpoint=/data -o compress=lz4 zroot/data

zfs set quota=5G zroot/ROOT

mv /var/backups /var/backups_tmp
zfs create -o mountpoint=/var/backups -o compress=lz4 -o quota=100M zroot/var/backups
rsync -avAX /var/backups_tmp/ /var/backups
rm -rf /var/backups_tmp

mv /var/cache /var/cache_tmp
zfs create -o mountpoint=/var/cache -o compress=lz4 -o quota=16G zroot/var/cache
rsync -avAX /var/cache_tmp/ /var/cache
rm -rf /var/cache_tmp

mv /var/db /var/db_tmp
zfs create -o mountpoint=/var/db -o compress=lz4 -o quota=16G zroot/var/db
rsync -avAX /var/db_tmp/ /var/db
rm -rf /var/db_tmp

mv /var/spool /var/spool_tmp
zfs create -o mountpoint=/var/spool -o compress=lz4 -o quota=100M zroot/var/spool
rsync -avAX /var/spool_tmp/ /var/spool
rm -rf /var/spool_tmp

mv /var/stats /var/stats_tmp
zfs create -o mountpoint=/var/stats -o compress=lz4 -o quota=1G zroot/var/stats
rsync -avAX /var/stats_tmp/ /var/stats
rm -rf /var/stats_tmp

zfs set compression=lz4 quota=16G zroot/var/audit
zfs set compression=lz4 quota=16G zroot/var/crash
zfs create -o mountpoint=/var/locks -o compress=lz4 -o quota=100M zroot/var/locks
zfs set compression=lz4 quota=16G zroot/var/log
zfs set compression=lz4 quota=1G zroot/var/mail
zfs create -o mountpoint=/var/zabbix -o compress=lz4 -o quota=100M zroot/var/zabbix
zfs set compression=lz4 quota=64G zroot/usr/home
zfs set compression=lz4 quota=16G zroot/usr/ports
zfs set compression=lz4 quota=16G zroot/usr/src
zfs set compression=lz4 quota=128G zroot/tmp
zfs set compression=lz4 quota=128G zroot/var/tmp
```


Sendmail
---
```
cd /etc/mail
make
openssl dhparam -out /etc/mail/certs/dh.param 4096
make restart
```
