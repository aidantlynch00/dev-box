{ pkgs, lib, inputs, ... }:
let
  cfg = import ./configuration.nix;
in
{
  imports = [
    inputs.home-manager.nixosModules.home-manager
  ];

  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = false;
    backupFileExtension = "bak";
    extraSpecialArgs = {
      inherit inputs;
    };
    users.alynch = {
      imports = [ ];
      home = {
        username = "alynch";
        homeDirectory = "/home/alynch";
        stateVersion = "26.05";
      };
    };
  };

  users.mutableUsers = true;

  shell = {
    "bash" = pkgs.bash;
  }.${cfg.shell};

  users.users.alynch = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
    ignoreShellProgramCheck = true;
    shell = cfg.shell;
  };

  nix.settings.allowed-users = [ "alynch" ];
}
