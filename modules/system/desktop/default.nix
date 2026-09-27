{ self, ... }:
{
  flake.nixosModules.desktop = { inputs, pkgs, ... }:
  {
    imports = with self.nixosModules; [
      time
      media
      printing
      clipboard
      screenshot
    ];

    services.libinput.enable = true;
  };
}
