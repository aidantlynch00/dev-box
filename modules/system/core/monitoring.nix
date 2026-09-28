{
  flake.nixosModules.monitoring = { pkgs, ... }:
  {
    boot.kernelModules = [ "lm_sensors" ];

    environment.systemPackages = with pkgs; [
      btop
      htop
      lm_sensors
      procps
    ];
  };
}
