#!/bin/sh

sudo dpkg -r --force-depends raspberrypi-kernel
sudo dpkg -i ./raspberrypi-kernel_1.20230405-1_arm64.deb

#Turn off raspi-config service and set performance governor
sudo rcconf --off raspi-config
sudo bash -c "echo performance | tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor"

#apt-mark hold raspberrypi-kernel
