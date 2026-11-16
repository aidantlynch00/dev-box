{
  flake.nixosModules.ly = { config, ... }: {
    services.displayManager.ly = {
      enable = true;
      x11Support = config.services.xserver.enable;
    };
  };
}
