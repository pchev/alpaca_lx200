Summary: ASCOM Alpaca driver for LX200 telescope
Name: alpaca_lx200
Version: 0
Release: 1
Group: Sciences/Astronomy
License: GPLv2+
URL: https://github.com/pchev/alpaca_lx200
Packager: Patrick Chevalley
BuildRoot: %_topdir/%{name}
BuildArch: x86_64
Provides: alpaca_lx200
Requires: qt5pas glib2 libjpeg libpng
AutoReqProv: no

%description
ASCOM Alpaca driver for LX200 telescope compatible with different Meade 
or compatible box using the LX200 protocol

%files
%defattr(-,root,root)
/usr/bin/alpaca_lx200
/usr/share/alpaca_lx200
/usr/share/metainfo/alpaca_lx200.appdata.xml
/usr/share/applications/alpaca_lx200.desktop
/usr/share/pixmaps/alpaca_lx200.png
/usr/share/icons/hicolor/48x48/apps/alpaca_lx200.png
/usr/share/doc/alpaca_lx200

