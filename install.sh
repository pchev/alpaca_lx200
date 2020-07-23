#!/bin/bash

destdir=$1

cpu_target=$2

if [ -z "$destdir" ]; then
   export destdir=/tmp/alpaca_lx200
fi

echo Install alpaca_lx200 to $destdir

install -m 755 -d $destdir
install -m 755 -d $destdir/bin
install -m 755 -d $destdir/share
install -m 755 -d $destdir/share/applications
install -m 755 -d $destdir/share/metainfo
install -m 755 -d $destdir/share/doc
install -m 755 -d $destdir/share/doc/alpaca_lx200
install -m 755 -d $destdir/share/pixmaps
install -m 755 -d $destdir/share/icons
install -m 755 -d $destdir/share/icons/hicolor
install -m 755 -d $destdir/share/icons/hicolor/48x48
install -m 755 -d $destdir/share/icons/hicolor/48x48/apps
install -m 755 -d $destdir/share/icons/hicolor/scalable
install -m 755 -d $destdir/share/icons/hicolor/scalable/apps
install -m 755 -d $destdir/share/alpaca_lx200
install -m 755 -d $destdir/share/alpaca_lx200/doc

install -v -m 755 -s src/alpaca_lx200  $destdir/bin/alpaca_lx200
install -v -m 644 doc/lx200.html $destdir/share/alpaca_lx200/doc/lx200.html
install -v -m 644 packages/Linux/share/applications/alpaca_lx200.desktop $destdir/share/applications/alpaca_lx200.desktop
install -v -m 644 packages/Linux/share/metainfo/alpaca_lx200.appdata.xml $destdir/share/metainfo/alpaca_lx200.appdata.xml
install -v -m 644 packages/Linux/share/doc/alpaca_lx200/changelog $destdir/share/doc/alpaca_lx200/changelog
install -v -m 644 packages/Linux/share/doc/alpaca_lx200/copyright $destdir/share/doc/alpaca_lx200/copyright
install -v -m 644 packages/Linux/share/pixmaps/alpaca_lx200.png $destdir/share/pixmaps/alpaca_lx200.png
install -v -m 644 packages/Linux/share/icons/hicolor/48x48/apps/alpaca_lx200.png $destdir/share/icons/hicolor/48x48/apps/alpaca_lx200.png
