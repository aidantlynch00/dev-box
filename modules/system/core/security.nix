{
  flake.nixosModules.security = { inputs, pkgs, ... }:
  {
    programs.gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };

    security.pki.caCertificateBlacklist = [
      "Comodo AAA Services root"
      "emSign ECC Root CA - G3"
    ];
  };
}
