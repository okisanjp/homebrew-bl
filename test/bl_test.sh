#!/bin/bash

testMain(){
  EX=`cat test/stdout.txt | awk '/ExternalConnected/ { print $3 }'`
  MAX=`cat test/stdout.txt | awk '/MaxCapacity/ { print $3 }'`
  CUR=`cat test/stdout.txt | awk '/CurrentCapacity/ { print $3 }'`
  TTE=`cat test/stdout.txt | awk '/InstantTimeToEmpty/ { print $3 }'`
  DES=`cat test/stdout.txt | awk '/DesignCapacity/ { print $3 }'`
  FC=`cat test/stdout.txt | awk '/FullyCharged/ { print $3 }'`
  assertTrue "ExternalConnected" "[ $EX = 'Yes' ]"
  assertTrue "MaxCapacity" "[ $MAX -ge 0 ]"
  assertTrue "CurrentCapacity" "[ $CUR -ge 0 ]"
  assertTrue "InstantTimeToEmpty" "[ $TTE -ge 0 ]"
  assertTrue "DesignCapacity" "[ $DES -ge 0 ]"
  assertTrue "FullyCharged" "[ $FC = 'Yes' ]"
}

. ./shunit2/source/2.1/src/shunit2
