#!/bin/bash

echo 'Removing...'
sudo mount -uw /
sudo rm -vf /usr/bin/ALCPlugFix
sudo rm -vf /usr/bin/hda-verb
sudo launchctl unload /Library/LaunchAgents/good.win.ALCPlugFix.plist
sudo rm -vf  /Library/LaunchAgents/good.win.ALCPlugFix.plist

exit 0
