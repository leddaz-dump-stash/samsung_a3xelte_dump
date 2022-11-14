#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/13540000.dwmmc0/by-name/RECOVERY:21252096:b5a6a59931c074b48a6a72d54137fcfbb73808c1; then
  applypatch EMMC:/dev/block/platform/13540000.dwmmc0/by-name/BOOT:18991104:1891224fd433d56153a8c907335dc8d2e11eda1e EMMC:/dev/block/platform/13540000.dwmmc0/by-name/RECOVERY b5a6a59931c074b48a6a72d54137fcfbb73808c1 21252096 1891224fd433d56153a8c907335dc8d2e11eda1e:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
