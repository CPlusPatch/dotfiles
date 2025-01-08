{ pkgs, ... }: {
  gtk = {
    enable = true;
    theme = {
      name = "adw-gtk3-dark";
      package = pkgs.adw-gtk3;
    };
    gtk3.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };
    gtk4.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };
  };

  home.pointerCursor = {
    name = "whitesur-cursors";
    package = pkgs.whitesur-cursors;
    size = 24;
    gtk.enable = true;
    x11.enable = true;
  };
}
