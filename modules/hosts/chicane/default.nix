{ inputs, self, ... }:
{
  flake.nixosConfigurations.chicane = inputs.nixpkgs.lib.nixosSystem {
    specialArgs = {
      inherit inputs;
    };

    modules = with self.nixosModules; [
      ./_hardware.nix
      chicane
    ];
  };

  flake.nixosModules.chicane = { lib, pkgs, ... }: {
    imports = with self.nixosModules; [
      limine
      plymouth
      core
      bluetooth
      ly
      desktop
      wayland
      mango
      alynch
    ];

    boot.loader.efi.canTouchEfiVariables = true;
    boot.loader.limine.efiSupport = true;

    networking.hostName = "chicane";

    system.stateVersion = "26.05";
  };
}
