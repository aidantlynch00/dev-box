{ inputs, ... }:
{
  flake.nixosConfigurations.halcyon = inputs.nixpkgs.lib.nixosSystem {
    specialArgs = {
      inherit inputs;
    };

    modules = [
      ./_hardware.nix
      ./_configuration.nix
    ];
  };
}
