#!/bin/bash
# Copyright (C) 2016 Tuxafgmur - Dhollmen 
# Removes unneeded files from the rom, before beeing packaged

WSYSTEMDIR=$1
WOURTDIR=${WSYSTEMDIR%/system}

rm -f  $WSYSTEMDIR/recovery-from-boot.p
rm -f  $WSYSTEMDIR/bin/install-recovery.sh
rm -f  $WSYSTEMDIR/etc/recovery-resource.dat
rm -f  $WSYSTEMDIR/etc/vimrc
rm -fr $WSYSTEMDIR/etc/bash
rm -fr $WSYSTEMDIR/etc/nano
rm -fr $WSYSTEMDIR/etc/terminfo
rm -f  $WSYSTEMDIR/etc/init.d/{00banner,90userinit}
rm -f  $WSYSTEMDIR/lib/hw/power.*.so
rm -fr $WSYSTEMDIR/usr/share/vim
rm -f  $WSYSTEMDIR/xbin/bash
rm -f  $WSYSTEMDIR/xbin/nano
rm -f  $WSYSTEMDIR/xbin/vim

[ -e $WSYSTEMDIR/vendor/lib/libPVRScopeServices.so ] || ln -s ./libPVRScopeServices_SGX540_120.so $WSYSTEMDIR/vendor/lib/libPVRScopeServices.so
