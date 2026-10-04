{ inputs, self, ... }:
{
  flake.nixosConfigurations.halcyon = inputs.nixpkgs.lib.nixosSystem {
    specialArgs = {
      inherit inputs;
    };

    modules = with self.nixosModules; [
      ./_hardware.nix
      halcyonConfiguration
    ];
  };
}
