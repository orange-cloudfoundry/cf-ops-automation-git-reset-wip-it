#!/bin/sh

if [ $# -ne 1 ]
then
  echo "usage: $0 <branch_to_create>"
  exit 1
fi

x=$1
git co develop &&git co -b $x && touch $x.md && git add $x.md && git commit -m"add file on $x"
