Basic steps
---

```
touch /var/log/all.log
mkdir /usr/local/etc/newsyslog.conf.d
chmod 755 /usr/local/etc/newsyslog.conf.d
```


ZFS tuning
---

```
zfs create -o mountpoint=/data -o compress=lz4 zroot/data

mv /var/cache /var/cache_tmp
zfs create -o mountpoint=/var/cache -o compress=lz4 zroot/var/cache
rsync -avAX /var/cache_tmp/ /var/cache
rm -rf /var/cache_tmp

mv /var/db /var/db_tmp
zfs create -o mountpoint=/var/db -o compress=lz4 zroot/var/db
rsync -avAX /var/db_tmp/ /var/db
rm -rf /var/db_tmp

zfs set compression=lz4 /zroot/var/mail
zfs set compression=lz4 /zroot/var/log
zfs set compression=lz4 /zroot/usr/ports
zfs set compression=lz4 /zroot/usr/src
zfs set compression=lz4 /zroot/usr/home
```
