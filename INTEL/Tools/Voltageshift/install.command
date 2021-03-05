#!/bin/bash

# sudo ./voltageshift buildlaunchd <CPU> <GPU> <CPUCache> <SA> <AI/O> <DI/O> <turbo> <pl1> <pl2> <remain> <UpdateMins (0 only apply at bootup)>

curr_dir="$(dirname "${0}")"
cd $curr_dir
sudo chmod -R 0755 ./VoltageShift.kext
sudo chown -R 0:0 ./VoltageShift.kext
sudo ./voltageshift buildlaunchd -150 -80 -150 0 0 0 0 15 30 0 80
echo
./voltageshift info

