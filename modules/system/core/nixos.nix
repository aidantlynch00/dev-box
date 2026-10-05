{
  flake.nixosModules.nixos = {
    nixpkgs.config.allowUnfree = true;

    nix.gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 30d";
      persistent = true;
    };

    nix.settings.auto-optimise-store = true;
    nix.optimise.automatic = true;
  };
}
