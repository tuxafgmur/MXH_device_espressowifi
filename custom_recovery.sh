#!/bin/bash
# Copyright (C) 2016 Tuxafgmur - Dhollmen 
# Modify recovery before build image
# Parameter #1 is the TARGET_RECOVERY_OUT directory
# Parameter #2 can be 'trwp' if defined RECOVERY_VARIANT 

rm -f $1/root/sbin/cbd
