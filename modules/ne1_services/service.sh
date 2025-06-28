#!/system/bin/sh
sleep 5
# Set CPU frequency and governor
for i in `seq 0 3`; do
    chmod 0644 /sys/devices/system/cpu/cpu$i/cpufreq/scaling_governor
    echo "performance" > /sys/devices/system/cpu/cpu$i/cpufreq/scaling_governor
    chmod 0644 /sys/devices/system/cpu/cpu$i/cpufreq/scaling_min_freq
    echo "1248000" > /sys/devices/system/cpu/cpu$i/cpufreq/scaling_min_freq
done
sleep 10
# Power-efficient workqueues
chmod 0644 /sys/module/workqueue/parameters/power_efficient
echo 'Y' > /sys/module/workqueue/parameters/power_efficient
# Set RQ affinity (better disk read/write speeds)
echo '2' > /sys/block/mmcblk0/queue/rq_affinity
echo '2' > /sys/block/mmcblk1/queue/rq_affinity
# Set GPU frequency
echo "650000" > /proc/gpufreq/gpufreq_opp_freq
# Disable Low Memory Killer
chmod 666 /sys/module/lowmemorykiller/parameters/minfree
chown root /sys/module/lowmemorykiller/parameters/minfree
echo '0,0,0,0,0,0' > /sys/module/lowmemorykiller/parameters/minfree
sleep 20
# Re-enable MTK Engineering mode app (disabled by fixes.sh)
pm enable com.mediatek.engineermode
