#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:55231788:54021fe785690a1d59cbb4bd5cbdba20eed5083e; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:51180840:be594b2ee6560b50c39afc5a906bd1fa0c7a0153 EMMC:/dev/block/bootdevice/by-name/recovery 54021fe785690a1d59cbb4bd5cbdba20eed5083e 55231788 be594b2ee6560b50c39afc5a906bd1fa0c7a0153:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
