#!/bin/sh

STAT_BATTERY=$(ioreg -rn AppleSmartBattery | awk '
                /MaxCapacity/ {MAX=$3}
                /CurrentCapacity/ {CUR=$3}
              END {printf("%4.1f%%", CUR/MAX*100)}')


echo "Battery level      :" ${STAT_BATTERY}
