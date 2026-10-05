{
  flake.nixosModules.maintenance = {
    boot.tmp.cleanOnBoot = true;
  };
}
