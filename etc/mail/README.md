For Sendmail
---
```
cd /etc/mail
make && make restart
```


For Sendmail STARTTLS run
---
```
openssl dhparam -out /etc/mail/certs/dh.param 4096
```
