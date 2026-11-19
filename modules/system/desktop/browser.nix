{ self, ... }:
{
  flake.nixosModules.browser = {
    imports = with self.nixosModules; [
      firefox
    ];
  };
}
