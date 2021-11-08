Basic steps
---

```
touch /var/log/all.log
mkdir /usr/local/etc/newsyslog.conf.d
chmod 755 /usr/local/etc/newsyslog.conf.d
```


Samba 4
---

```
mkdir /var/locks
chmod 755 /var/locks
```


ZFS tuning
---

```
zfs create -o mountpoint=/data -o compress=lz4 zroot/data

mv /var/backups /var/backups_tmp
zfs create -o mountpoint=/var/backups -o compress=lz4 zroot/var/backups
rsync -avAX /var/backups_tmp/ /var/backups
rm -rf /var/backups_tmp

mv /var/cache /var/cache_tmp
zfs create -o mountpoint=/var/cache -o compress=lz4 zroot/var/cache
rsync -avAX /var/cache_tmp/ /var/cache
rm -rf /var/cache_tmp

mv /var/db /var/db_tmp
zfs create -o mountpoint=/var/db -o compress=lz4 zroot/var/db
rsync -avAX /var/db_tmp/ /var/db
rm -rf /var/db_tmp

mv /var/spool /var/spool_tmp
zfs create -o mountpoint=/var/spool -o compress=lz4 zroot/var/spool
rsync -avAX /var/spool_tmp/ /var/spool
rm -rf /var/spool_tmp

zfs create -o mountpoint=/var/locks -o compress=lz4 zroot/var/locks
zfs set compression=lz4 /zroot/var/log
zfs set compression=lz4 /zroot/var/mail
zfs create -o mountpoint=/var/zabbix -o compress=lz4 zroot/var/zabbix
zfs set compression=lz4 /zroot/usr/home
zfs set compression=lz4 /zroot/usr/ports
zfs set compression=lz4 /zroot/usr/src
```
