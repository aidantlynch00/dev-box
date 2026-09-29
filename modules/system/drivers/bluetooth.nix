{
  flake.nixosModules.bluetooth = { ... }:
  {
    hardware.bluetooth = {
      enable = true;
      powerOnBoot = true;
      # show device battery
      settings.General.Experimental = true;
    };
  };
}
