#!/bin/bash

# sudo ./voltageshift buildlaunchd <CPU> <GPU> <CPUCache> <SA> <AI/O> <DI/O> <turbo> <pl1> <pl2> <remain> <UpdateMins (0 only apply at bootup)>

curr_dir="$(dirname "${0}")"
sudo chmod -R 0755 ${curr_dir}/VoltageShift.kext
sudo chown -R 0:0 ${curr_dir}/VoltageShift.kext
${curr_dir}/voltageshift buildlaunchd -150 -80 -150 0 0 0 0 15 30 0 80
echo
${curr_dir}/voltageshift info

