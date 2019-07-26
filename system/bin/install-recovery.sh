#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:55231788:60e5e07fd08ffff81245a35ec599750e0ce92afc; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:51180840:3fb9976c8cdc212310923dfcbdf927a0a3dd0384 EMMC:/dev/block/bootdevice/by-name/recovery 60e5e07fd08ffff81245a35ec599750e0ce92afc 55231788 3fb9976c8cdc212310923dfcbdf927a0a3dd0384:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
