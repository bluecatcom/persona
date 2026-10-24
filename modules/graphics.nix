{ config, ... }:

{
  # Drivers de vídeo
  services.xserver.videoDrivers = [ "nvidia" ];

  # Aceleração gráfica
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  # NVIDIA MX130
  hardware.nvidia = {
    package = config.boot.kernelPackages.nvidiaPackages.legacy_580;

    # Necessário para Wayland
    modesetting.enable = true;

    # Gerenciamento de energia
    powerManagement.enable = true;
    powerManagement.finegrained = true;

    # Driver proprietário
    open = false;

    # NVIDIA PRIME Offload
    prime = {
      offload = {
        enable = true;
        enableOffloadCmd = true;
      };

      intelBusId = "PCI:0:2:0";
      nvidiaBusId = "PCI:2:0:0";
    };
  };
}
