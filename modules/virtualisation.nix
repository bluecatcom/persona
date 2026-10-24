{ ... }:

{
  virtualisation.docker.enable = true;

  # Permite que seu usuário utilize Docker sem sudo
  users.users.ic.extraGroups = [ "docker" ];
}
