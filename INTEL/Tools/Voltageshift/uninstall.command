#!/bin/bash

# sudo rm /Library/LaunchDaemons/com.sicreative.VoltageShift.plist
# sudo rm -R /Library/Application\ Support/VoltageShift

curr_dir="$(dirname "${0}")"
sudo chmod -R 0755 ${curr_dir}/VoltageShift.kext
sudo chown -R 0:0 ${curr_dir}/VoltageShift.kext
${curr_dir}/voltageshift removelaunchd

