#!/bin/bash

echo 'Uninstalling VoltageShift...'
sudo rm -vf /usr/local/bin/voltageshift 
sudo rm -vf /Library/LaunchDaemons/com.xlnc.VoltageShift.plist
echo 'Shutdown and boot to take effect.'


