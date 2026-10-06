{
  flake.nixosModules.network = { pkgs, ... }:
  {
    networking.networkmanager.enable = true;
    services.openssh.enable = true;

    environment.systemPackages = with pkgs; [
      bluetui
      dnsutils
      inetutils
      iputils
      netcat-gnu
      socat
      traceroute
      whois
    ];
  };
}
