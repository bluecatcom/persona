{ ... }:

{
  # Compositor Wayland
  programs.niri.enable = true;

  # Compatibilidade com aplicativos X11
  programs.xwayland.enable = true;
}
