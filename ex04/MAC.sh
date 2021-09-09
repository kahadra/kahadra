#!/bin/sh
ifconfig -a ether | grep -w ether | cut -d " " -f2
