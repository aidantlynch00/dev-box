{ ... }:
{
  flake.nixosModules.display = { pkgs, ... }:
  {
    xdg.portal.wlr.enable = true;

    environment.systemPackages = with pkgs; [
      wlr-randr
      wlrctl
    ];
  };
}
