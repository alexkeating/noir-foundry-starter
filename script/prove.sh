#!/bin/bash
if [ "$#" -ne 1 ]
then
  echo "Usage: ./prove.sh [TESTNAME_STRING]"
  exit 1
fi

if [ ! -d "/tmp/$1" ]; then
  mkdir /tmp/$1
fi
cd /tmp/$1 && nargo prove && echo "Proof Generated"
