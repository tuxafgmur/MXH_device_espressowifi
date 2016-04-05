#!/bin/bash
# Copyright (C) 2016 Tuxafgmur - Dhollmen 
# Modify recovery before build image
# Parameter #1 is the TARGET_RECOVERY_OUT directory
# Parameter #2 can be 'trwp' if defined RECOVERY_VARIANT 

rm -f $1/root/sbin/cbd

if [ `echo $1 | grep espresso3g` ]; then
    sed "s/ro.build.product=.*/ro.build.product=espressorf/"       -i $1/root/default.prop
    sed "s/ro.product.device=.*/ro.product.device=espresso10rf/"   -i $1/root/default.prop
else
    sed "s/ro.build.product=.*/ro.build.product=espressowifi/"     -i $1/root/default.prop
    sed "s/ro.product.device=.*/ro.product.device=espresso10wifi/" -i $1/root/default.prop
fi
