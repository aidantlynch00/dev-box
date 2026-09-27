{ ... }:
{
  flake.nixosModules.halcyonConfiguration = { ... }:
  {
    hardware.bluetooth.enable = true;

    boot.loader.efi.canTouchEfiVariables = true;
    boot.loader.limine.efiSupport = true;

    networking.hostName = "halcyon";

    system.stateVersion = "26.05";
  };
}
