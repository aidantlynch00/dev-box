{ ... }:
{
  flake.nixosModules.halcyonConfiguration = { ... }:
  {
    boot.loader.efi.canTouchEfiVariables = true;
    boot.loader.limine.efiSupport = true;

    networking.hostName = "halcyon";
    time.timeZone = "America/Los_Angeles";
    i18n.defaultLocale = "en_US.UTF-8";
  };
}
