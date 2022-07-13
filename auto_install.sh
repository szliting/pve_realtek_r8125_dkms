#/bin/bash

apt update -y
apt install -y dkms
apt install -y pve-headers-$(uname -r)

wget https://gitee.com/fibreyu/pve_realtek_r8125_dkms/attach_files/1126181/download/pve-realtek-r8125-dkms_9.009.02-1_amd64.deb -O driver.deb

# apt install -f /tmp/driver.deb -y
dpkg -i ./driver.deb

rm -rf ./driver.deb

echo "reboot to apply new driver!"