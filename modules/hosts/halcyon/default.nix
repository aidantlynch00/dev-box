{ inputs, self, ... }:
{
  flake.nixosConfigurations.halcyon = inputs.nixpkgs.lib.nixosSystem {
    specialArgs = {
      inherit inputs;
    };

    modules = with self.nixosModules; [
      ./_hardware.nix
      halcyonConfiguration
    ];
  };

  flake.nixosModules.halcyonConfiguration = { lib, pkgs, ... }: {
    imports = with self.nixosModules; [
      limine
      core
      bluetooth
      nvidia
      desktop
      wayland
      mango
      alynch
    ];

    home-manager.users.alynch = {
      imports = with inputs.dev-env.homeModules; [
        alynch
        full
        halcyon
      ];

      nix.package = lib.mkForce pkgs.nix;
    };

    boot.loader.efi.canTouchEfiVariables = true;
    boot.loader.limine.efiSupport = true;

    networking.hostName = "halcyon";

    system.stateVersion = "26.05";
  };
}
