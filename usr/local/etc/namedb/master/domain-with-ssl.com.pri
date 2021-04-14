$ORIGIN .
$TTL 86400      ; 1 day
@                       IN SOA  dns1.domain.com. root.domain.com. (
                                2021010101 ; serial
                                1800       ; refresh (30 minutes)
                                600        ; retry (10 minutes)
                                3600000    ; expire (5 weeks 6 days 16 hours)
                                600        ; minimum (10 minutes)
                                )
                        NS      dns1.domain.com.
                        NS      dns2.domain.com.
                        NS      dns3.domain.com.
                        MX      10 mail.domain.com.
                        MX      20 mail2.domain.com.

                        TXT     "v=spf1 mx include:_spf.google.com ip4:1.2.3.0/24 ip6:2222:3333:4444::/48 ~all"

                        CAA     128 issue "letsencrypt.org"
$ORIGIN domain.com.
$TTL 120        ; 2 minutes
_acme-challenge         TXT     "R00zn3MxD9LHgKFhbbSqcwLdFADgi_d1CjyW0uowNs0"
                        TXT     "bNAfxgXku3o3GvQK8nrw7AtBi06yD26oKZsIffxM_34"

$TTL 86400      ; 1 day
domain._domainkey        TXT     "v=DKIM1; k=rsa; " "p=MIIBIANBkqhki9w0BQEFAAOCAQ8AIIBCgKCAEAEQ0gRXgXEV7YyJkkQAuq8fEwGqy4YTVyRAxYKEERCnBRqQ6HDNZWgcIoTgenPn7RWRXnhjlaE+1PWwl2ocMENz+jOzwhC4mXKCS5AZTh"

*                       A       11.22.33.44
data                    A       11.22.33.2
dns1                    A       11.22.33.1
                        AAAA    2222:3333:4444:5555::1
