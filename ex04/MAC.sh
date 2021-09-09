#!/bin/sh
ifconfig -a ether | grep -iw ether | cut -d " " -f2
