#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:55231788:92f21de3a58429adc22a6ef102389a08f1a4092d; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:51180840:5a1686fbd4f1b7bb2904f9f34aebca36f547f33f EMMC:/dev/block/bootdevice/by-name/recovery 92f21de3a58429adc22a6ef102389a08f1a4092d 55231788 5a1686fbd4f1b7bb2904f9f34aebca36f547f33f:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
