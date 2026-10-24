{ pkgs, ... }:

{
  programs.tmux = {
    enable = true;

    terminal = "screen-256color";
    mouse = true;
    keyMode = "vi";
    historyLimit = 50000;
    escapeTime = 0;

    plugins = with pkgs.tmuxPlugins; [
      sensible
      resurrect
      continuum
      yank
    ];

    extraConfig = ''
      set -g status-position bottom
      set -g status-interval 5

      set -g @continuum-restore 'on'
      set -g @continuum-save-interval '15'

      bind r source-file ~/.config/tmux/tmux.conf \; display-message "Tmux recarregado"
    '';
  };
}
