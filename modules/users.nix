
{ pkgs, ... }:

{
  # Usuários do sistema
  users.users."ic" = {
    isNormalUser = true;
    description = "IC";

    # Grupos e permissões
    extraGroups = [
      "networkmanager"
      "wheel"
    ];

    # Pacotes específicos do usuário
    packages = with pkgs; [
      kdePackages.kate
    ];
  };
}
