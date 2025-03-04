#!/bin/bash 

version=$(grep 'lx200_version' src/pu_lx200client.pas |head -1| cut -d\' -f2)

builddir=/tmp/alpaca_lx200  # Be sure this is set to a non existent directory, it is removed after the run!

arch=$(arch)

# adjuste here the target you want to crossbuild
# You MUST crosscompile Freepascal and Lazarus for this targets! 

unset extratarget
if [[ $arch == aarch64 ]]; then
  extratarget=",aarch64-linux"
fi

make_linuxarm=1

if [[ -n $1 ]]; then
  configopt="fpc=$1"
fi
if [[ -n $2 ]]; then
  configopt=$configopt" lazarus=$2"
fi

save_PATH=$PATH
wd=`pwd`

currentrev=$(git rev-list --count --first-parent HEAD)

echo $version - $currentrev


# delete old files
  rm alpaca_lx200-*_armhf.tar.bz2
  rm alpaca-lx200_*_armhf.deb
  rm -rf $builddir

# make Linux arm version
if [[ $make_linuxarm ]]; then
  ./configure $configopt prefix=$builddir target=arm-linux$extratarget
  if [[ $? -ne 0 ]]; then exit 1;fi
  make CPU_TARGET=arm OS_TARGET=linux clean
  make CPU_TARGET=arm OS_TARGET=linux
  if [[ $? -ne 0 ]]; then exit 1;fi
  make install CPU_TARGET=arm
  if [[ $? -ne 0 ]]; then exit 1;fi
  # tar
  cd $builddir
  cd ..
  tar cvjf alpaca_lx200-$version-$currentrev-linux_armhf.tar.bz2 alpaca_lx200
  if [[ $? -ne 0 ]]; then exit 1;fi
  mv alpaca_lx200*.tar.bz2 $wd
  if [[ $? -ne 0 ]]; then exit 1;fi
  # deb
  cd $wd
  rsync -a --exclude=.svn packages/Linux/debian $builddir
  cd $builddir
  mkdir debian/alpaca-lx200arm/usr/
  mv bin debian/alpaca-lx200arm/usr/
  mv share debian/alpaca-lx200arm/usr/
  cd debian
  sz=$(du -s alpaca-lx200arm/usr | cut -f1)
  sed -i "s/%size%/$sz/" alpaca-lx200arm/DEBIAN/control
  sed -i "/Version:/ s/0/$version-$currentrev/" alpaca-lx200arm/DEBIAN/control
  fakeroot dpkg-deb -Zxz --build alpaca-lx200arm .
  if [[ $? -ne 0 ]]; then exit 1;fi
  mv alpaca-lx200*.deb $wd
  if [[ $? -ne 0 ]]; then exit 1;fi

  cd $wd
  rm -rf $builddir
fi


