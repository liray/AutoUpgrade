#!/bin/bash
/usr/bin/paccache -r -k 0
/usr/bin/pacman --noconfirm -Syyuu
/usr/bin/paccache -r -k 0
exit 0
