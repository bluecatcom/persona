
{ pkgs, ... }:

{
  # Bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Kernel
  boot.kernelPackages = pkgs.linuxPackages_latest;

  # Ajustes de memória virtual
  boot.kernel.sysctl = {
    "vm.swappiness" = 100;
    "vm.vfs_cache_pressure" = 50;
  };
}

