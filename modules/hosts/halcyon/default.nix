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

  flake.nixosModules.halcyonConfiguration = {
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

    boot.loader.efi.canTouchEfiVariables = true;
    boot.loader.limine.efiSupport = true;

    networking.hostName = "halcyon";

    system.stateVersion = "26.05";
  };
}
