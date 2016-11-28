#!/system/bin/sh
# turning off swap ram
swapoff /dev/block/zram0
# setting zram size to 512MB
echo 536870912 > /sys/block/zram0/disksize
#
# making zram swapable
mkswap /dev/block/zram0
#
# starting swap on zram
swapon /dev/block/zram0
#
# setting zram
echo 4194304 > /proc/sys/vm/dirty_background_bytes
echo 100 > /proc/sys/vm/swappiness
echo 50 > /proc/sys/vm/dirty_ratio
echo 30 > /proc/sys/vm/dirty_background_ratio
echo 1 > /proc/sys/vm/drop_caches
# Laptop performance mode
echo 1 > /proc/sys/vm/laptop_mode

