{ ... }:
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
      shell = pkgs.bash;
    };

    nix.settings.allowed-users = [ "alynch" ];

    home-manager.users.alynch = {
      home.packages = with pkgs; [
        git
        vim
      ];
      home = {
        username = "alynch";
        homeDirectory = "/home/alynch";
        stateVersion = "26.05";
      };
    };
  };
}
