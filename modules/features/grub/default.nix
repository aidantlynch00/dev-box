{ ... }:
{
  flake.nixosModules.grub = { ... }:
  {
    boot.loader.grub.enable = true;
  };
}
