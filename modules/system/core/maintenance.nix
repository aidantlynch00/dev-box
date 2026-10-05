{
  flake.nixosModules.maintenance = {
    boot.cleanTmpDir = true;
  };
}
