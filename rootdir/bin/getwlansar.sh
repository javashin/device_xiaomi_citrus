#!/vendor/bin/sh
sarvalue=`vendor_cmd_tool -f /vendor/etc/wifi/sar-vendor-cmd.xml -i wlan0 --START_CMD --SAR_GET --RESPONSE --SAR_GET --END_CMD`
sarvalue=`echo $sarvalue | sed 's/ //g' | cut -d ":" -f 5`
sarvalue=${sarvalue:0:1}
#setprop persist.vendor.debug.wlansarresult $sarvalue
#touch /data/vendor/wlansar/wlansar.cfg
#chown system:system /data/vendor/wlansar/wlansar.cfg
echo $sarvalue >/data/vendor/wlansar/wlansar.cfg