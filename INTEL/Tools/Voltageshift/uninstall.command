#!/bin/bash

# sudo rm /Library/LaunchDaemons/com.sicreative.VoltageShift.plist
# sudo rm -R /Library/Application\ Support/VoltageShift

curr_dir="$(dirname "${0}")"
cd $curr_dir
sudo chmod -R 0755 ./VoltageShift.kext
sudo chown -R 0:0 ./VoltageShift.kext
sudo ./voltageshift removelaunchd

