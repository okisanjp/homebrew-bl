#!/bin/sh

#
# bl for OSX 10.12.1
# okisanjp 2016
#

if ! type -a ioreg > /dev/null 2>&1; then
  echo "ioreg does not exist."
  exit 1
fi

ioreg -rn AppleSmartBattery | awk '
    /ExternalConnected/ { EX=$3 }
    /MaxCapacity/ { MAX=$3 }
    /CurrentCapacity/ { CUR=$3 }
    /InstantTimeToEmpty/{ TTE=$3 }
    /DesignCapacity/ { DES=$3 }
    /FullyCharged/ { FC=$3 }
  END {
    print("External Power :", EX)
    printf("Current level  : %4.1f%%\n", CUR/MAX*100)
    if ( FC != "Yes" ) {
      printf("Time to empty  : %1dd %2dh %2dm\n", TTE/1440, TTE/60, TTE%60)
    } else if ( TTE < 65535 ) {
      printf("Time to empty  : %1dd %2dh %2dm \(FULL CHARGED\)\n", TTE/1440, TTE/60, TTE%60)
    } else {
      print("Time to empty  : FULL CHARGED")
    }
    printf("deterioration  : %4.1f%%\n", MAX/DES*100)
  }'
