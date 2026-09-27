{ ... }:
{
  flake.nixosModules.time = { lib, ... }:
  {
    services.automatic-timezoned.enable = true;

    time.timeZone = lib.mkForce null;
  };
}
