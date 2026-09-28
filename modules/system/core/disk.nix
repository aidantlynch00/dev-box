{
  flake.nixosModules.disk = { pkgs, ... }:
  {
    boot.kernelModules = [
      "exfat"
      "ext4"
      "fuse"
      "nls_cp437"
      "nls_iso8859-1"
      "ntfs3"
      "vfat"
    ];

    boot.supportedFilesystems = {
      exfat = true;
      ext4 = true;
      ntfs = true;
      vfat = true;
    };

    environment.systemPackages = with pkgs; [
      cryptsetup
      e2fsprogs
      gparted
      parted
    ];
  };
}
