/testing/guestbin/swan-prep
ipsec start
/testing/pluto/bin/wait-until-pluto-started
../bin/block-non-ipsec.sh
ipsec auto --add north-east
ipsec whack --xauthname 'xnorth' --xauthpass 'use1pass' --name north-east --initiate
ping -q -n -c 4 -w 4 -I 192.0.2.201  192.0.2.254
ipsec whack --trafficstatus
echo initdone
