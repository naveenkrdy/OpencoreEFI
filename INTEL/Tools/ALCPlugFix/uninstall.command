#!/bin/bash

echo 'Removing...'
sudo mount -uw /
sudo rm -vf /usr/local/bin/ALCPlugFix
sudo rm -vf /usr/local/bin/ALCVerbs.plist
sudo launchctl unload /Library/LaunchAgents/com.ALCPlugFix.plist
sudo rm -vf  /Library/LaunchAgents/com.ALCPlugFix.plist

exit 0
