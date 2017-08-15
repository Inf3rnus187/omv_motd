#!/bin/bash
#

wget https://raw.githubusercontent.com/Inf3rnus187/omv_motd/master/motd_hello_gen
wget https://raw.githubusercontent.com/Inf3rnus187/omv_motd/master/motd.timer
wget https://raw.githubusercontent.com/Inf3rnus187/omv_motd/master/motd.service

#move script to bindir
mv motd_hello_gen /usr/bin/motd_hello_gen
chmod +x /usr/bin/

#move motd service and timer files to systemd service dir
mv motd.service motd.timer /etc/systemd/system/

#Enable timer
systemctl enable motd.timer
/usr/bin/motd_hello_gen
