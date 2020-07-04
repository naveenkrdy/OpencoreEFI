#!/bin/bash

cur_dir="$(dirname "$0")"

echo 'Installing...'
cd "$cur_dir"
sudo mount -uw /
sudo cp -vf ALCPlugFix /usr/bin
sudo chmod 755 /usr/bin/ALCPlugFix
sudo chown 0:0 /usr/bin/ALCPlugFix
sudo cp -vf hda-verb /usr/bin
sudo chmod 755 /usr/bin/hda-verb
sudo chown 0:0 /usr/bin/hda-verb
sudo cp -vf good.win.ALCPlugFix.plist /Library/LaunchAgents/
sudo chmod 644 /Library/LaunchAgents/good.win.ALCPlugFix.plist
sudo chown 0:0 /Library/LaunchAgents/good.win.ALCPlugFix.plist
sudo launchctl load /Library/LaunchAgents/good.win.ALCPlugFix.plist

exit 0
