
ZFS tuning
---

```
zfs set compression=lz4 /zroot/var/mail
zfs set compression=lz4 /zroot/var/log
zfs set compression=lz4 /zroot/var/cache
zfs set compression=lz4 /zroot/var/db
zfs set compression=lz4 /zroot/usr/ports
zfs set compression=lz4 /zroot/usr/src
zfs set compression=lz4 /zroot/usr/home
zfs set compression=lz4 /zroot/data
```
