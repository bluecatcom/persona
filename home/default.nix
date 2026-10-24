{ ... }:

{
  imports = [
    ./tmux.nix
  ];

  home.username = "ic";
  home.homeDirectory = "/home/ic";

  home.stateVersion = "26.05";

  programs.home-manager.enable = true;
}
