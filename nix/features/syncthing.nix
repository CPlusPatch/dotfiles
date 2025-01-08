{ ... }: {
  services.syncthing = {
    enable = true;
    openDefaultPorts = true;
    user = "jessew";
    settings = {
      devices = {
        "lexi" = {
          id =
            "OHJ6XHU-MAY267G-VG5VT6S-O6PQO7S-CKXHZTD-SAYENZV-Y2CMAP3-BWOFPQZ";
          name = "Lexi's Pixel 7a";
        };
        "wheatley" = {
          id =
            "QIWRLDR-UEEJYAW-JVZBENS-RULAR6T-OLT4WKL-NWE62II-76GJ662-M7LKSQL";
          autoAcceptFolders = true;
          name = "Wheatley";
        };
      };
      folders = {
        "cloud" = {
          path = "/home/jessew/Cloud";
          devices = [ "wheatley" ];
          ignorePerms = false;
          label = "Cloud";
        };
      };
    };
  };

  systemd.services.syncthing.environment.STNODEFAULTFOLDER =
    "true"; # Don't create default ~/Sync folder
}
