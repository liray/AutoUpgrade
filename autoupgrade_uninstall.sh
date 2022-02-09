#!/bin/bash

if [[ $EUID -ne 0 ]]; then
	echo "Error: This script must bu run as root!" 1>&2
	exit 1
fi

servicePath="/usr/lib/systemd/system/"
serviceName="autoupgrade"

if [ ! -f "${servicePath}${serviceName}.service" ]; then
	echo "Note: Could not find ${serviceName}.service, skip!"
	exit 0
fi

systemctl disable --now ${serviceName}.timer
rm -f ${servicePath}${serviceName}.service ${servicePath}${serviceName}.timer /opt/upgrade.sh
systemctl daemon-reload

exit 0

