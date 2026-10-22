{ self, ... }:
{
  flake.nixosModules.wayland = { pkgs, ... }:
  {
    imports = with self.nixosModules; [
      display
      clipboard
      screenshots
    ];
  };
}
