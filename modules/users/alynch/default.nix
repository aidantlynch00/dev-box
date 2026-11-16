{
  flake.nixosModules.alynch = { pkgs, ... }:
  {
    users.mutableUsers = true;

    users.users.alynch = {
      isNormalUser = true;
      extraGroups = [
        "wheel"
        "networkmanager"
      ];
    };

    nix.settings.allowed-users = [ "alynch" ];
  };
}
