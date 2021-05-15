#!/bin/bash

echo 'Uninstalling ALCPlugFix...'
sudo rm -vf /usr/local/bin/ALCPlugFix
sudo rm -vf /Library/Application\ Support/ALCVerbs.plist
sudo rm -vf /Library/LaunchDaemons/com.xlnc.ALCPlugFix.plist
echo 'Reboot to take effect'
