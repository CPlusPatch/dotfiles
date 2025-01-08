{ inputs, config, pkgs, ... }: {
  imports = [ inputs.home-manager.nixosModules.home-manager ];

  boot.extraModulePackages = with config.boot.kernelPackages; [
    xpadneo
    v4l2loopback
  ];

  console = {
    font = "JetBrainsMono";
    keyMap = "fr";
    packages = with pkgs; [ jetbrains-mono ];
  };

  hardware = {
    amdgpu.opencl.enable = true;
    graphics.enable32Bit = true;
  };

  services = {
    flatpak.enable = true;
    fprintd.enable = true;
    libinput.enable = true;
    pipewire = {
      enable = true;
      alsa.enable = true;
      pulse.enable = true;
    };
    printing.enable = true;
    udev.packages = with pkgs; [ gnome-settings-daemon ];
    xserver = {
      enable = true;
      xkb.layout = "fr";
      desktopManager.gnome.enable = true;
      displayManager.gdm.enable = true;
    };
    asusd.enable = true;
  };

  environment = {
    gnome.excludePackages = with pkgs; [
      cheese # webcam tool
      atomix # puzzle game
      evince # document viewer, replaced by papers
      geary # email reader
      gnome-console
      gnome-photos
      gnome-terminal
      gnome-tour
      gnome-user-docs
      gnome-contacts
      gnome-initial-setup
      gnome-music
      hitori # sudoku game
      iagno # go game
      orca # screen reader
      simple-scan
      tali # poker game
      totem # video player
      yelp # help viewer
    ];
    sessionVariables = {
      # Overwrite value set by `home.pointerCursor.size`,
      # xwayland apps need twice the size
      XCURSOR_SIZE = "48";
    };
  };

  programs = {
    adb.enable = true;
    steam = {
      enable = true;
      protontricks.enable = true;
      extraCompatPackages = with pkgs; [ proton-ge-bin ];
    };
    gamemode.enable = true;
  };

  users.users.jessew.extraGroups = [ "adbusers" "video" ];

  fonts.packages = with pkgs; [ inter jetbrains-mono ];
}
