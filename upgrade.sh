#!/bin/bash
/usr/bin/paccache -r -k 0
/usr/bin/pacman --noconfirm -Syyuu
/usr/bin/paccache -r -k 0
# restart on each upgrade
/usr/bin/shutdown -r now
exit 0
