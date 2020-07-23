#!/bin/bash

OS_TARGET=$1
destdir=$2

if [ -z "$OS_TARGET=" ]; then
   export OS_TARGET==win32
fi

if [ -z "$destdir" ]; then
   export destdir=/tmp/alpaca_lx200/Data
fi

echo Install alpaca_lx200 $OS_TARGET to $destdir

install -m 755 -d $destdir
install -m 755 -d $destdir/doc


if [ $OS_TARGET = win32 ]; then 
  strip -v -o $destdir/../Prog/alpaca_lx200.exe src/alpaca_lx200.exe 
fi
if [ $OS_TARGET = win64 ]; then
  strip -v -o $destdir/../Prog/alpaca_lx200-x64.exe src/alpaca_lx200.exe 
fi

install -v -m 644 doc/lx200.html    $destdir/doc/lx200.html

