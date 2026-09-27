{ inputs, ... }:
{
  flake.nixosModules.mango = { pkgs, ... }:
  {
    imports = [ inputs.mango.nixosModules.mango ];
    programs.mango = {
      enable = true;
    };
  };
}
