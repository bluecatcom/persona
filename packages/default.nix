{ pkgs, ... }:

{
  # Permitir pacotes proprietários
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    # Aplicativos
    obsidian
    blender
    discord
    chromium
    thunar

    # Terminal e desenvolvimento
    kitty
    vscodium
    git
    curl
    wget
    gh

    # PHP
    php85
    php85Packages.php-codesniffer
    php85Packages.composer

    # Python
    python3
    uv

    # Utilitários
    fastfetch
    wl-clipboard
    zip
    unzip
    unrar

    # Niri e componentes visuais
    noctalia-shell
    quickshell
    xwayland-satellite
  ];
}

