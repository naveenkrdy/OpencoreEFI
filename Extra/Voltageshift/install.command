#!/bin/bash

# sudo ./voltageshift buildlaunchd <CPU> <GPU> <CPUCache> <SA> <AI/O> <DI/O> <turbo> <pl1> <pl2> <remain> <UpdateMins (0 only apply at bootup)>
# sudo ./voltageshift buildlaunchd -150 -80 -150 0 0 0 0 15 30 0 80

curr_dir="$(dirname "${0}")"
cd $curr_dir

echo 'Installing VoltageShift.'
echo 'Copying...'
sudo cp -vf voltageshift /usr/local/bin
sudo cp -vf com.xlnc.VoltageShift.plist /Library/LaunchDaemons
echo 'Fixing Permissions...'
sudo chmod -v 755 /usr/local/bin/voltageshift
sudo chown -v 0:0 /usr/local/bin/voltageshift
sudo xattr -c /usr/local/bin/voltageshift
sudo chmod -v 644 /Library/LaunchDaemons/com.xlnc.VoltageShift.plist
sudo chown -v 0:0 /Library/LaunchDaemons/com.xlnc.VoltageShift.plist
sudo xattr -c /Library/LaunchDaemons/com.xlnc.VoltageShift.plist
echo 'Reboot to take effect.'


