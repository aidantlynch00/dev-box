{ self, ... }:
{
  flake.nixosModules.halcyonConfiguration = {
    imports = with self.nixosModules; [
      limine
      core
      bluetooth
      nvidia
      desktop
      wayland
      alynch
    ];

    boot.loader.efi.canTouchEfiVariables = true;
    boot.loader.limine.efiSupport = true;

    networking.hostName = "halcyon";

    system.stateVersion = "26.05";
  };
}
