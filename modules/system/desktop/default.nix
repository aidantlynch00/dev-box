{ self, ... }:
{
  flake.nixosModules.desktop = { inputs, pkgs, ... }:
  {
    imports = with self.nixosModules; [
      browser
      time
      media
      printing
      notifications
    ];

    services.libinput.enable = true;
  };
}
