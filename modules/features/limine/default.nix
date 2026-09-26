{ ... }:
{
  flake.nixosModules.limine = { ... }:
  {
    boot.loader.limine.enable = true;
  };
}
