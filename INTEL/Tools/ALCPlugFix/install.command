#!/bin/bash

cur_dir="$(dirname "$0")"

echo 'Installing...'
cd "$cur_dir"
sudo mount -uw /
sudo cp -vf ALCPlugFix /usr/local/bin
sudo chmod 755 /usr/local/bin/ALCPlugFix
sudo chown 0:0 /usr/local/bin/ALCPlugFix
sudo cp -vf ALCVerbs.plist /usr/local/bin
sudo cp -vf com.ALCPlugFix.plist /Library/LaunchAgents/
sudo chmod 644 /Library/LaunchAgents/com.ALCPlugFix.plist
sudo chown 0:0 /Library/LaunchAgents/com.ALCPlugFix.plist
sudo launchctl load /Library/LaunchAgents/com.ALCPlugFix.plist

exit 0
