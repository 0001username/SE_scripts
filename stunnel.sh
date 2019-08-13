#!/bin/bash

if [ "$(id -u)" -ne 0 ]; then
	echo -ne "\nPlease execute this script as root.\n"
	exit 1; fi
if [ ! -f /etc/debian* ]; then
	echo -ne "\nFor Debian distro only.\n"
	exit 1; fi
export DEBIAN_FRONTEND=noninteractive

apt install -y stunnel4
wget https://github.com/X-DCB/Unix/raw/master/stunnel.tar.gz -qO- | tar xz -C /etc/stunnel

echo -ne "\nStunnel installed.\n
Script by Dexter Cellona Banawon"