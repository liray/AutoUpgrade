#!/bin/bash

curl https://raw.githubusercontent.com/etzisim/AutoUpgrade/main/autoupgrade.service --output /usr/lib/systemd/system/autoupgrade.service
curl https://raw.githubusercontent.com/etzisim/AutoUpgrade/main/autoupgrade.timer --output /usr/lib/systemd/system/autoupgrade.timer
curl https://raw.githubusercontent.com/etzisim/AutoUpgrade/main/upgrade.sh --output /opt/upgrade.sh

pacman -Sy
pacman -S pacman-contrib

systemctl daemon-reload
systemctl enable --now autoupgrade.timer
systemctl start autoupgrade.service

exit 0
