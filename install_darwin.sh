#!/bin/bash

destdir=$1

if [ -z "$destdir" ]; then
   export destdir=/tmp/alpaca_lx200
fi

echo Install alpaca_lx200 to $destdir

install -d -m 755 $destdir
install -d -m 755 $destdir/alpaca_lx200.app
install -d -m 755 $destdir/alpaca_lx200.app/Contents
install -d -m 755 $destdir/alpaca_lx200.app/Contents/MacOS
install -d -m 755 $destdir/alpaca_lx200.app/Contents/Resources
install -v -m 644 packages/MacOSX/pkg/alpaca_lx200.app/Contents/Info.plist $destdir/alpaca_lx200.app/Contents/
install -v -m 644 packages/MacOSX/pkg/alpaca_lx200.app/Contents/PkgInfo $destdir/alpaca_lx200.app/Contents/
install -v -m 755 -s src/alpaca_lx200  $destdir/alpaca_lx200.app/Contents/MacOS/alpaca_lx200
install -v -m 644 packages/MacOSX/pkg/alpaca_lx200.app/Contents/Resources/README.rtf $destdir/alpaca_lx200.app/Contents/Resources/
install -v -m 644 packages/MacOSX/pkg/alpaca_lx200.app/Contents/Resources/alpaca_lx200.icns $destdir/alpaca_lx200.app/Contents/Resources/

install -d -m 755 $destdir/doc

install -v -m 644 doc/lx200.html    $destdir/doc/lx200.html

