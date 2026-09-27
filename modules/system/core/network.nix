{ ... }:
{
  flake.nixosModules.network = { pkgs, ... }:
  {
    networking.networkmanager.enable = true;
    services.openssh.enable = true;

    environment.systemPackages = with pkgs; [
      bluetui
      iputils
      netcat-gnu
      socat
      traceroute
      whois
    ];
  };
}
