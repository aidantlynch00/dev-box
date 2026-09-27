{ ... }:
{
  flake.nixosModules.notifications = { pkgs, ... }:
  {
    environment.systemPackages = with pkgs; [
      libnotify
    ];
  };
}
