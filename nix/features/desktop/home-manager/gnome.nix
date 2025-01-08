{ lib, config, ... }:
with lib.hm.gvariant; {
  dconf.settings = {
    "org/gnome/Weather" = {
      locations = [
        (mkVariant [
          (mkUint32 2)
          (mkVariant [
            "Troyes"
            "LFQB"
            true
            [ (mkTuple [ 0.8435757993128286 7.010406410620307e-2 ]) ]
            [ (mkTuple [ 0.8429940287132611 7.126760530533761e-2 ]) ]
          ])
        ])
      ];
      window-height = 497;
      window-maximized = false;
      window-width = 992;
    };

    "org/gnome/desktop/background" = {
      picture-uri =
        "file://${config.home.homeDirectory}/Cloud/Wallpapers/Helldivers/omens of tyranny.jpg";
      picture-uri-dark =
        "file://${config.home.homeDirectory}/Cloud/Wallpapers/Helldivers/omens of tyranny.jpg";
      picture-options = "zoom";
    };
    "org/gnome/desktop/input-sources" = {
      sources = [ (mkTuple [ "xkb" "fr" ]) ];
    };
    "org/gnome/desktop/interface" = {
      accent-color = "red";
      clock-show-weekday = true;
      color-scheme = "prefer-dark";
      enable-hot-corners = true;
      font-hinting = "slight";
      font-name = "Inter Variable 11";
      enable-animations = true;
      monospace-font-name = "JetBrainsMono Nerd Font Mono 10";
      show-battery-percentage = true;
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      disable-while-typing = false;
    };
    "org/gnome/desktop/wm/keybindings" = {
      switch-applications = [ ];
      switch-applications-backward = [ ];
      switch-windows = [ "<Alt>Tab" ];
      switch-windows-backward = [ "<Shift><Alt>Tab" ];
    };
    "org/gnome/desktop/wm/preferences" = {
      button-layout = "icon:minimize,maximize,close";
    };
    "org/gnome/mutter" = {

      experimental-features = [ "scale-monitor-framebuffer" ];
    };
    "org/gnome/settings-daemon/plugins/color" = { night-light-enabled = true; };
    "org/gnome/settings-daemon/plugins/media-keys" = { play = [ "Launch3" ]; };
    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal" =
      {
        binding = "<Control><Alt>t";
        command = "ghostty";
        name = "Open Terminal";
      };
    "org/gnome/settings-daemon/plugins/media-keys" = {
      custom-keybindings = [
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/nachrichten/"
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/"
      ];
    };
    "org/gnome/settings-daemon/plugins/power" = {
      ambient-enabled = false;
      idle-dim = true;
      sleep-inactive-battery-type = "nothing";
      sleep-inactive-ac-type = "nothing";
      power-button-action = "nothing";
    };
    "org/gnome/shell" = {
      disabled-extensions = [
        "apps-menu@gnome-shell-extensions.gcampax.github.com"
        "native-window-placement@gnome-shell-extensions.gcampax.github.com"
        "workspace-indicator@gnome-shell-extensions.gcampax.github.com"
        "blur-my-shell@aunetx"
      ];
      enabled-extensions = [
        "Bluetooth-Battery-Meter@maniacx.github.com"
        "clipboard-indicator@tudmotu.com"
        "dash-to-dock@micxgx.gmail.com"
        "fullscreen-notifications@sorrow.about.alice.pm.me"
        "desktop-cube@schneegans.github.com"
        "gnome-fuzzy-app-search@gnome-shell-extensions.Czarlie.gitlab.com"
        "media-progress@krypion17"
        "pip-on-top@rafostar.github.com"
        "PrivacyMenu@stuarthayhurst"
        "quick-settings-avatar@d-go"
        "appindicatorsupport@rgcjonas.gmail.com"
        "system-monitor@gnome-shell-extensions.gcampax.github.com"
        "gsconnect@andyholmes.github.io"
        "lockscreen-extension@pratap.fastmail.fm"
      ];
      favorite-apps = [
        "org.gnome.Nautilus.desktop"
        "com.mitchellh.ghostty.desktop"
        "io.github.zen_browser.zen.desktop"
        "visual-studio-code-insiders.desktop"
        "org.mozilla.Thunderbird.desktop"
        "md.obsidian.Obsidian.desktop"
        "firefox-developer-edition.desktop"
        "org.prismlauncher.PrismLauncher.desktop"
      ];
      remember-mount-password = true;
    };
    "org/gnome/shell/extensions/blur-my-shell" = { settings-version = 2; };

    "org/gnome/shell/extensions/blur-my-shell/appfolder" = {
      brightness = 0.6;
      sigma = 30;
    };

    "org/gnome/shell/extensions/blur-my-shell/coverflow-alt-tab" = {
      pipeline = "pipeline_default";
    };

    "org/gnome/shell/extensions/blur-my-shell/dash-to-dock" = {
      blur = false;
      brightness = 0.6;
      pipeline = "pipeline_default_rounded";
      sigma = 30;
      static-blur = true;
      style-dash-to-dock = 0;
    };

    "org/gnome/shell/extensions/blur-my-shell/lockscreen" = {
      pipeline = "pipeline_default";
    };

    "org/gnome/shell/extensions/blur-my-shell/overview" = {
      pipeline = "pipeline_default";
    };

    "org/gnome/shell/extensions/blur-my-shell/panel" = {
      brightness = 0.6;
      pipeline = "pipeline_default";
      sigma = 30;
      static-blur = true;
    };

    "org/gnome/shell/extensions/blur-my-shell/screenshot" = {
      pipeline = "pipeline_default";
    };

    "org/gnome/shell/extensions/blur-my-shell/window-list" = {
      brightness = 0.6;
      sigma = 30;
    };

    "org/gnome/shell/extensions/dash-to-dock" = {
      apply-custom-theme = true;
      background-opacity = 0.8;
      custom-theme-shrink = false;
      dash-max-icon-size = 64;
      disable-overview-on-startup = false;
      dock-position = "BOTTOM";
      extend-height = false;
      height-fraction = 0.9;
      preferred-monitor = -2;
      preferred-monitor-by-connector = "eDP-2";
      preview-size-scale = 0.0;
    };
    "org/gnome/shell/weather" = {
      automatic-location = true;
      locations = [
        (mkVariant [
          (mkUint32 2)
          (mkVariant [
            "Troyes"
            "LFQB"
            true
            [ (mkTuple [ 0.8435757993128286 7.010406410620307e-2 ]) ]
            [ (mkTuple [ 0.8429940287132611 7.126760530533761e-2 ]) ]
          ])
        ])
      ];
    };
    "org/gnome/gnome-screenshot" = { default-file-type = "webp"; };
  };
}
