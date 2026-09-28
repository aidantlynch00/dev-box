{ ... }:
{
  flake.nixosModules.halcyonConfiguration = { ... }:
  {
    boot.loader.efi.canTouchEfiVariables = true;
    boot.loader.limine.efiSupport = true;

    networking.hostName = "halcyon";

    system.stateVersion = "26.05";
  };
}
