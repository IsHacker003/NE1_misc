#!/system/bin/sh 

#               Copyright (C) 2025  IsHacker
#
#     This script is free software: you can redistribute it and/or modify
#     it under the terms of the GNU General Public License as published by
#     the Free Software Foundation, either version 3 of the License, or
#     (at your option) any later version.
#
#     This script is distributed in the hope that it will be useful,
#     but WITHOUT ANY WARRANTY; without even the implied warranty of
#     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#     GNU General Public License for more details.

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
