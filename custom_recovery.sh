#!/bin/bash
# Copyright (C) 2016 Tuxafgmur - Dhollmen 
# Modify recovery before build image

rm -f $1/root/sbin/cbd
cp vendor/cm/prebuilt/common/etc/mkshrc $1/root/etc/
