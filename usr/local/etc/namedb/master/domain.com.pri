$TTL    86400
@                       IN SOA dns1.domain.com. root.domain.com. (
                               2021010101     ; serial number
                               1800           ; refresh
                               600            ; retry
                               3600000        ; expire
                               600)           ; minimum TTL

@                               NS      dns1.domain.com.
@                               NS      dns2.domain.com.
@                               NS      dns3.domain.com.

@                               MX      10      mail.domain.com.
@                               MX      20      mail2.domain.com.

localhost                       A       127.0.0.1
localhost                       AAAA    ::1

@                               A       11.22.33.44
@                               AAAA    2222:3333:4444:5555::ffff

www                             CNAME   @

*                               A       11.22.33.44
*                               AAAA    2222:3333:4444:5555::ffff
