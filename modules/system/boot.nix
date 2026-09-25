{ ... }:
{
  flake.nixosModules.boot = { ... }:
  {
    boot.loader.limine.enable = true;
    boot.loader.limine.biosDevice = "nodev";
    boot.loader.efi.canTouchEfiVariables = true;
  };
}
