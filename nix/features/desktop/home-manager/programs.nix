{ pkgs, ... }: {
  programs.firefox = {
    enable = true;
    package = pkgs.firefox-devedition;
  };

  xdg.mimeApps = {
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
      "text/html" = [ "firefox-devedition.desktop" ];
      "text/plain" = [ "org.gnome.TextEditor.desktop" ];
      "x-scheme-handler/chrome" = [ "firefox-devedition.desktop" ];
      "x-scheme-handler/http" = [ "firefox-devedition.desktop" ];
      "x-scheme-handler/https" = [ "firefox-devedition.desktop" ];
      "x-scheme-handler/mailto" = [ "org.mozilla.Thunderbird.desktop" ];
    };
  };
}
