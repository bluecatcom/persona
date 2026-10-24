
{ ... }:

{
  # Nome da máquina
  networking.hostName = "nixos";

  # Gerenciamento de rede
  networking.networkmanager.enable = true;

  # Bluetooth
  hardware.bluetooth.enable = true;
  services.blueman.enable = true;
}
