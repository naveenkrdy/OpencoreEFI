#!/usr/bin/env bash

cd "$(dirname "$0")"

rm -Rf ./Binaries
rm -Rf ./Source/*.aml

iasl="./iasl"

cd Source

for file in $(ls -1);do              
iasl -vi -ve ${file}
done

mkdir ../Binaries
mv -f *.aml ../Binaries

echo "Done."

read dummy