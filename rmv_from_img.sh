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
rm -f  $WSYSTEMDIR/micro_bench_static
rm -f  $WSYSTEMDIR/xbin/{ls,ps}

[ -e $WSYSTEMDIR/xbin/fstrim ] || ln -s ./busybox $WSYSTEMDIR/xbin/fstrim
[ -e $WSYSTEMDIR/vendor/lib/libPVRScopeServices.so ] || ln -s ./libPVRScopeServices_SGX540_120.so $WSYSTEMDIR/vendor/lib/libPVRScopeServices.so

sed '/dalvik.vm.stack-trace-file/d' -i $WSYSTEMDIR/build.prop
sed '/ro.expect.recovery_id/d'      -i $WSYSTEMDIR/build.prop
sed 's;dalvik.vm.heapstartsize=5m;dalvik.vm.heapstartsize=8m;'       -i $WSYSTEMDIR/build.prop
sed 's;dalvik.vm.heapsize=256m;dalvik.vm.heapsize=174m;'             -i $WSYSTEMDIR/build.prop
sed 's;dalvik.vm.heapgrowthlimit=48m;dalvik.vm.heapgrowthlimit=64m;' -i $WSYSTEMDIR/build.prop
