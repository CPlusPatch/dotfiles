{ pkgs, ... }: {
  gtk = {
    enable = true;
    theme = {
      name = "adw-gtk3-dark";
      package = pkgs.adw-gtk3;
    };
    cursorTheme = {
      name = "WhiteSur-cursors";
      package = pkgs.whitesur-cursors;
    };
  };

  home.pointerCursor = {
    name = "WhiteSur-cursorss";
    package = pkgs.whitesur-cursors;
    size = 24;
    gtk.enable = true;
    x11.enable = true;
  };
}
