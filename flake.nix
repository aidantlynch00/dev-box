{
  description = "dev-box";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    quickshell = {
      url = "github:outfoxxed/quickshell";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    noctalia = {
      url = "github:noctalia-dev/noctalia-shell";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.quickshell.follows = "quickshell";
    };
    stylix.url = "github:danth/stylix";
  };

  outputs = { nixpkgs, flake-utils, ... }@inputs:
    let
      system = "x86_64-linux";

      mkHost = { hostname }: nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = {
          inherit inputs;
          host = hostname;
        };
        modules = [ ./hosts/${hostname} ];
      };
    in
    {
      nixosConfigurations = builtins.mapAttrs
        (name: _: mkHost { hostname = name; })
        (builtins.readDir ./hosts);
    };
}
