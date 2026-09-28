{ inputs, ... }:
{
  flake.nixosModules.mango = {
    imports = [ inputs.mango.nixosModules.mango ];
    programs.mango = {
      enable = true;
    };
  };
}
