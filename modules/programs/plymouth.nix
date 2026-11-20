{
  flake.nixosModules.plymouth = {
    boot = {
      plymouth.enable = true;

      # boot silently
      consoleLogLevel = 3;
      kernelParams = [
        "quiet"
        "rd.udev.log_level=3"
        "rd.systemd.show_status=auto"
      ];
    };
  };
}
