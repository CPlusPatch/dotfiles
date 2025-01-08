{ inputs, pkgs, ... }:
let fenixPkgs = inputs.fenix.packages.${pkgs.stdenv.system};
in {
  imports = [ ./desktop ./packages.nix ./programs ./services ];

  home = {
    username = "jessew";
    homeDirectory = "/home/jessew";

    # This value determines the Home Manager release that your
    # configuration is compatible with. This helps avoid breakage
    # when a new Home Manager release introduces backwards
    # incompatible changes.
    #
    # You can update Home Manager without changing this value. See
    # the Home Manager release notes for a list of state version
    # changes in each release.
    stateVersion = "24.11";

    file.".config/ghostty/config".text = ''
      theme = Dark Modern
      font-size = 11
    '';

    sessionVariables = {
      # https://nixos.wiki/wiki/Wayland#Electron_and_Chromium
      NIXOS_OZONE_WL = 1;

      RUST_SRC_PATH =
        "${fenixPkgs.complete.rust-src}/lib/rustlib/src/rust/library";
    };
  };

  fonts.fontconfig.enable = true;

  xdg = {
    mimeApps = {
      enable = true;
      defaultApplications = {
        "application/pdf" = [ "org.gnome.Papers.desktop" ];
        "application/zip" = [ "org.gnome.FileRoller.desktop" ];
        "image/bmp" = [ "org.gnome.Loupe.desktop" ];
        "image/gif" = [ "org.gnome.Loupe.desktop" ];
        "image/jpeg" = [ "org.gnome.Loupe.desktop" ];
        "image/png" = [ "org.gnome.Loupe.desktop" ];
        "image/svg+xml" = [ "org.gnome.Loupe.desktop" ];
        "image/webp" = [ "org.gnome.Loupe.desktop" ];
        "text/calendar" = [ "org.gnome.Calendar.desktop" ];
        "text/html" = [ "firefox-developer-edition.desktop" ];
        "text/plain" = [ "org.gnome.TextEditor.desktop" ];
        "x-scheme-handler/chrome" = [ "firefox-developer-edition.desktop" ];
        "x-scheme-handler/http" = [ "firefox-developer-edition.desktop" ];
        "x-scheme-handler/https" = [ "firefox-developer-edition.desktop" ];
        "x-scheme-handler/mailto" = [ "thunderbird.desktop" ];
      };
    };
    userDirs = {
      enable = true;
      createDirectories = true;
    };
  };

  # https://github.com/nix-community/home-manager/issues/2064
  systemd.user.targets.tray = {
    Unit = {
      Description = "Home Manager System Tray";
      Requires = [ "graphical-session-pre.target" ];
    };
  };
}
