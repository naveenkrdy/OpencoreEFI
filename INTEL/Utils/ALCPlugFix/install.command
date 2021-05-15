#!/bin/bash

cur_dir="$(dirname "$0")"
cd "$cur_dir"

echo 'Installing ALCPlugFix.'
echo 'Copying...'
sudo cp -vf ALCPlugFix /usr/local/bin
sudo cp -vf ALCVerbs.plist /Library/Application\ Support
sudo cp -vf com.xlnc.ALCPlugFix.plist /Library/LaunchDaemons
echo 'Fixing Permissions...'
sudo chmod -v 755 /usr/local/bin/ALCPlugFix
sudo chown -v 0:0 /usr/local/bin/ALCPlugFix
sudo chmod -v 644 /Library/Application\ Support/ALCVerbs.plist
sudo chown -v 0:0 /Library/Application\ Support/ALCVerbs.plist
sudo chmod -v 644 /Library/LaunchDaemons/com.xlnc.ALCPlugFix.plist
sudo chown -v 0:0 /Library/LaunchDaemons/com.xlnc.ALCPlugFix.plist
sudo xattr -c /usr/local/bin/ALCPlugFix
sudo xattr -c /Library/Application\ Support/ALCVerbs.plist
sudo xattr -c /Library/LaunchDaemons/com.xlnc.ALCPlugFix.plist
echo 'Reboot to take effect'
