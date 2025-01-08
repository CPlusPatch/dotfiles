{ config, pkgs, ... }: {
  imports = [ ./home-manager ];

  nix = {
    package = pkgs.nixVersions.stable;
    extraOptions = "experimental-features = nix-command flakes";
    settings = { auto-optimise-store = true; };
  };

  nixpkgs.config.allowUnfree = true;

  boot = {
    kernelPackages = pkgs.linuxPackages_latest;
    loader = {
      systemd-boot = {
        enable = true;
        configurationLimit = 5;
      };
      efi.canTouchEfiVariables = true;
    };
    extraModulePackages = with config.boot.kernelPackages; [
      xpadneo
      v4l2loopback
    ];
    tmp.useTmpfs = true;
  };

  networking.networkmanager.enable = true;

  time.timeZone = "Europe/Paris";

  i18n.defaultLocale = "en_GB.UTF-8";
  console = {
    font = "JetBrainsMono";
    keyMap = "fr";
    packages = with pkgs; [ jetbrains-mono ];
  };

  zramSwap = { enable = true; };

  hardware = {
    enableRedistributableFirmware = true;
    bluetooth.enable = true;
    amdgpu.opencl.enable = true;
    graphics.enable32Bit = true;
  };

  security.rtkit.enable = true;
  services = {
    flatpak.enable = true;
    fprintd.enable = true;
    fstrim.enable = true;
    fwupd = { enable = true; };
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

  systemd.extraConfig = ''
    DefaultTimeoutStopSec=10s
  '';

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
    pathsToLink = [ "/share/zsh" ];
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
    zsh.enable = true;
    gamemode.enable = true;
  };

  users.users.jessew = {
    isNormalUser = true;
    extraGroups = [ "adbusers" "libvirtd" "networkmanager" "video" "wheel" ];
    shell = pkgs.zsh;
  };

  fonts.packages = with pkgs; [ inter jetbrains-mono ];

  virtualisation = {
    libvirtd.enable = true;
    docker.enable = true;
  };

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.11"; # Did you read the comment?
}
