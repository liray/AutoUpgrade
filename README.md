# AutoUpgrade
Archlinux/pacman AutoUpgrade systemd timer

Install this script will add autoupgrade.timer and autoupgrade.service, to make system auto upgrade on every Saturday 3:00 as default, or you can change the upgrade datetime in autoupgrade.timer.

**Note:** the system will restart on each upgrade!

## Usage

## install script

1. Sigh in archlinux as root
2. Git clone this project
3. Change dir to `AutoUpgrade`
4. Use command `sh autoupgrade_install.sh`
5. Ok, enjoy! 

## uninstall script

1. Sigh in archlinux as root
2. Change dir to `AutoUpgrade`
3. Use command `sh autoupgrade_uninstall.sh`
4. Then auto upgrade service has been removed

Sorry about my poor English!

