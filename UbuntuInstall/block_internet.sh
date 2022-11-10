#!/bin/bash

users=`cat /etc/passwd | cut -d: -f1`
# groups $USER
users=("samuel" "adm" "cdrom" "dip" "plugdev" "lpadmin" "lxd" "sambashare")
for user in "${users[@]}";
do
	sudo iptables -I OUTPUT 1 -m owner --gid-owner $user -j DROP
	sudo ip6tables -I OUTPUT 1 -m owner --gid-owner $user -j DROP
done

