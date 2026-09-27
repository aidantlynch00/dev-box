{ self, ... }:
{
  flake.nixosModules.core = { inputs, pkgs, ... }:
  {
    imports = with self.nixosModules; [
      inputs.home-manager.nixosModules.home-manager
      power
      disk
      monitoring
      network
      security
    ];

    i18n.defaultLocale = "en_US.UTF-8";

    environment.systemPackages = with pkgs; [
      coreutils
      curl
      diffutils
      file
      findutils
      gawk
      gnugrep
      gnupg
      gnused
      gnutls
      less
      man-pages
      pciutils
      usbutils
      wget
      which
    ];
  };
}
