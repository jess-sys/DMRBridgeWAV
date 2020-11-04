#!/usr/bin/env bash

## Check if we have sudo rights
if [ "$EUID" -ne 0 ]
  then echo "This script must be run as root. Exiting"
  exit
fi

## Check if node is installed
if command -v python3 > /dev/null
  then true
  else
    echo "Package node is not installed. Exiting"
    exit
fi

## Prepare a clean directory in /opt with needed files
mkdir /opt/DMRBridgeWAV
cp . /opt/DMRBridgeWAV -R

cd /opt/DMRBridgeWAV
pip3 install -r requirements.txt
