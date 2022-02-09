#!/bin/bash

if [[ $EUID -ne 0 ]]; then
	echo "Error: Install script must be run as root!" 1>&2
	exit 1
fi

SHELL_FOLDER=$(dirname "$0")
servicePath="/usr/lib/systemd/system/"
serviceName="autoupgrade"

# if exist autoupgrade service, then run uninstall script first.
/usr/bin/sh ./autoupgrade_uninstall.sh

cp ./${serviceName}.service ${servicePath}${serviceName}.service
cp ./${serviceName}.timer ${servicePath}${serviceName}.timer
cp ./upgrade.sh /opt/upgrade.sh

pacman -Sy
pacman -S pacman-contrib --noconfirm

systemctl daemon-reload
systemctl enable --now ${serviceName}.timer
systemctl start ${serviceName}.service

exit 0
