{
  flake.nixosModules.media = { pkgs, ... }:
  {
    services.pipewire = {
      enable = true;
      pulse.enable = true;
    };

    environment.systemPackages = with pkgs; [
      ffmpeg
      mpv
      playerctl
      wiremix
    ];
  };
}
