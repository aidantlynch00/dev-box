{ ... }:
{
  flake.nixosModules.printing = { pkgs, ... }:
  {
    services.printing = {
      enable = true;
      drivers = [ pkgs.gutenprint ];
    };

    environment.systemPackages = with pkgs; [
      cups
    ];
  };
}
