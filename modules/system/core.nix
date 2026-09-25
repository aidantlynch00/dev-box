{ ... }:
{
  flake.nixosModules.core = { inputs, pkgs, ... }:
  {
    imports = [
      /etc/nixos/hardware-configuration.nix
      inputs.home-manager.nixosModules.home-manager
    ];

    networking.networkmanager.enable = true;

    services.pipewire = {
      enable = true;
      pulse.enable = true;
    };
    services.libinput.enable = true;
    services.printing.enable = true;
    services.openssh.enable = true;

    programs.firefox.enable = true;
    programs.mtr.enable = true;
    programs.gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };

    environment.systemPackages = with pkgs; [
      wget
    ];

    system.stateVersion = "26.05";
  };
}
