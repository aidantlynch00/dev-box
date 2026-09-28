{
  flake.nixosModules.power = { pkgs, ... }:
  {
    environment.systemPackages = with pkgs; [
      upower
    ];
  };
}
