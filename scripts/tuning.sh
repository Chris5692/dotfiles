
echo 'min_power' > '/sys/class/scsi_host/host4/link_power_management_policy';
echo 'min_power' > '/sys/class/scsi_host/host5/link_power_management_policy';
echo 'min_power' > '/sys/class/scsi_host/host3/link_power_management_policy';
echo 'min_power' > '/sys/class/scsi_host/host1/link_power_management_policy';
echo 'min_power' > '/sys/class/scsi_host/host2/link_power_management_policy';
echo 'min_power' > '/sys/class/scsi_host/host0/link_power_management_policy';
echo '1' > '/sys/module/snd_hda_intel/parameters/power_save';
echo 'auto' > '/sys/bus/i2c/devices/i2c-2/device/power/control';
echo 'auto' > '/sys/bus/i2c/devices/i2c-0/device/power/control';
echo 'auto' > '/sys/bus/i2c/devices/i2c-1/device/power/control';
echo 'auto' > '/sys/bus/i2c/devices/i2c-6/device/power/control';
echo 'auto' > '/sys/bus/i2c/devices/i2c-3/device/power/control';
echo 'auto' > '/sys/bus/i2c/devices/i2c-4/device/power/control';
echo 'auto' > '/sys/bus/i2c/devices/i2c-5/device/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:00:1f.2/ata5/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:02:00.0/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:00:1f.2/ata2/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:00:1f.2/ata3/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:00:1f.2/ata1/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:00:1f.2/power/control';
echo 'auto' > '/sys/block/sda/device/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:03:00.0/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:00:1f.2/ata4/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:00:1f.0/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:00:04.0/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:00:1b.0/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:00:1f.3/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:00:00.0/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:00:1d.0/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:00:1a.0/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:00:1f.6/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:00:02.0/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:00:1f.2/ata6/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:00:14.0/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:00:19.0/power/control'; 
echo '1500' > '/proc/sys/vm/dirty_writeback_centisecs';

echo 'enabled' > '/sys/class/net/enp0s25/device/power/wakeup';
echo 'enabled' > '/sys/class/net/wlp2s0/device/power/wakeup';
echo 'enabled' > '/sys/bus/usb/devices/usb3/power/wakeup';
echo 'enabled' > '/sys/bus/usb/devices/usb1/power/wakeup';
echo 'enabled' > '/sys/bus/usb/devices/1-1/power/wakeup';
echo 'enabled' > '/sys/bus/usb/devices/usb4/power/wakeup';
echo 'enabled' > '/sys/bus/usb/devices/usb2/power/wakeup';
echo 'enabled' > '/sys/bus/usb/devices/4-1/power/wakeup'; 



echo 5 > /proc/sys/vm/laptop_mode
echo 0 > /proc/sys/kernel/nmi_watchdog
echo Y > /sys/module/snd_ac97_codec/parameters/power_save
echo 1 > /sys/devices/system/cpu/sched_mc_power_savings
echo ondemand > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo 1500 > /proc/sys/vm/dirty_writeback_centisecs
for i in /sys/bus/usb/devices/*/power/autosuspend; do echo 1 > $i; done
# those sysctl's are only available if you have an AHCI compatible SATA 
# controler and use kernel > 2.6.24-rc2 (or use Kristen ALPM patchset) : 
echo min_power > /sys/class/scsi_host/host0/link_power_management_policy
echo min_power > /sys/class/scsi_host/host1/link_power_management_policy
echo min_power > /sys/class/scsi_host/host2/link_power_management_policy

## Custom
ip link set eno0 down
sudo iwconfig wlp2s0 power off
echo HDEF > /proc/acpi/wakeup
