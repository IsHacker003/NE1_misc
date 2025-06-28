#!/system/bin/sh 
# Disable MTK Engineering mode app to prevent crash messages. Will be re-enabled a few seconds later.
pm disable com.mediatek.engineermode
# Check if the magisk module is installed. If not installed, install it and reboot.
if [ -e /data/adb/modules/services ] 
then
      echo "1" > /data/adb/modules/services/module_installed
else
     magisk --install-module /system/etc/module.zip
     # Show toast: "Done! Rebooting in 10 seconds....."
     am broadcast com.android.settings/.ToastReceiverEx
     sleep 10 
     reboot
fi
