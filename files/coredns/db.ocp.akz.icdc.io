@                    3600 SOA ns.dns.akz.icdc.io. (
                              hostmaster.akz.icdc.io. ; address of responsible party
                              2020041714              ; serial number
                              3600                    ; refresh period
                              600                     ; retry period
                              604800                  ; expire time
                              1800                  ) ; minimum ttl
                     86400 NS   x1.ns.dns.akz.icdc.io.
; System
$ORIGIN sys.ocp.akz.icdc.io.
api                     60 CNAME api.sys1.ocp.akz.icdc.io.
console                 60 CNAME console.sys1.ocp.akz.icdc.io.
downloads               60 CNAME downloads.sys1.ocp.akz.icdc.io.
_acme-challenge         60 CNAME 0ce2199b-be46-4ec4-9101-85ff4f903ce2.acme.icdc.io.
gwint                   60 CNAME int.gw.sys1.ocp.akz.icdc.io.
gwvpn                   60 CNAME vpn.gw.sys1.ocp.akz.icdc.io.
gwext                   60 CNAME ext.gw.sys1.ocp.akz.icdc.io.
$ORIGIN sys1.ocp.akz.icdc.io.
api                     60 A    10.253.17.154
api-int                 60 A    10.254.29.11
console                 60 A    10.253.17.155
downloads               60 A    10.253.17.155
_acme-challenge         60 CNAME 0ce2199b-be46-4ec4-9101-85ff4f903ce2.acme.icdc.io.
$ORIGIN apps.sys1.ocp.akz.icdc.io.
oauth-openshift         60 A    10.253.17.155
_acme-challenge         60 CNAME 0ce2199b-be46-4ec4-9101-85ff4f903ce2.acme.icdc.io.
*                       60 A    10.254.29.12
$ORIGIN gw.sys1.ocp.akz.icdc.io.
int                     60 A    10.254.29.13
vpn                     60 A    10.253.17.156
ext                     60 A    91.147.110.3

; OutRun Cloud
$ORIGIN orc.ocp.akz.icdc.io.
api                     60 CNAME api.orc1.ocp.akz.icdc.io.
console                 60 CNAME console.orc1.ocp.akz.icdc.io.
downloads               60 CNAME downloads.orc1.ocp.akz.icdc.io.
_acme-challenge         60 CNAME 0ce2199b-be46-4ec4-9101-85ff4f903ce2.acme.icdc.io.
$ORIGIN orc1.ocp.akz.icdc.io.
api                     60 A    91.147.110.11
console                 60 A    91.147.110.12
downloads               60 A    91.147.110.12
_acme-challenge         60 CNAME 0ce2199b-be46-4ec4-9101-85ff4f903ce2.acme.icdc.io.
$ORIGIN apps.orc1.ocp.akz.icdc.io.
oauth-openshift         60 A    91.147.110.12
_acme-challenge         60 CNAME 0ce2199b-be46-4ec4-9101-85ff4f903ce2.acme.icdc.io.
*                       60 A    10.254.30.12
$ORIGIN ext.orc.ocp.akz.icdc.io.
_acme-challenge         60 CNAME 0ce2199b-be46-4ec4-9101-85ff4f903ce2.acme.icdc.io.
router-public		60 A    91.147.110.13
*                       60 A    91.147.110.13
$ORIGIN int.orc.ocp.akz.icdc.io.
_acme-challenge         60 CNAME 0ce2199b-be46-4ec4-9101-85ff4f903ce2.acme.icdc.io.
router-private		60 A    10.254.30.14
*                       60 A    10.254.30.14

