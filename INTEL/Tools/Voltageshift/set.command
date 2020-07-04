#!/bin/bash

curr_dir="$(dirname "${0}")"



${curr_dir}/voltageshift offset -150 -80 -150 0 0 0 0 15 30 80
${curr_dir}/voltageshift info

