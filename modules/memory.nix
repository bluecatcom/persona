{ ... }:

{
  zramSwap = {
    enable = true;
    algorithm = "zstd";
    memoryPercent = 75;
    priority = 100;
  };

  swapDevices = [
    {
      device = "/swapfile";
      size = 10 * 1024;
      priority = 10;
    }
  ];

  services.earlyoom.enable = true;
}
