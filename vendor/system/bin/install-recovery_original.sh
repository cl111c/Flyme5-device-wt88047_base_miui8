#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:10630404:d9fd153d88b9a8c131b7de6ee42324e6d11e4292; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:8969472:56666bb12ddcd26182e888a6e1331948191162a7 EMMC:/dev/block/bootdevice/by-name/recovery d9fd153d88b9a8c131b7de6ee42324e6d11e4292 10630404 56666bb12ddcd26182e888a6e1331948191162a7:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
