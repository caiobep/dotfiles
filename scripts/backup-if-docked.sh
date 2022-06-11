#!/bin/bash

ioreg -p IOUSB | grep -c "Studio Display" && diskutil mountDisk /dev/disk5 && tmutil startbackup -b && diskutil umountDisk /dev/disk5
