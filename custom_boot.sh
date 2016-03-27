#!/bin/bash
# Copyright (C) 2016 Tuxafgmur - Dhollmen 
# Modify boot before build image

rm -f $2/init.trace.rc

cp $PWD/$1/rootdir/etc/init.usb.rc  $2/
cp $PWD/$1/rootdir/etc/ueventd.rc   $2/
