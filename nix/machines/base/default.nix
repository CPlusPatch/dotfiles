{ pkgs, ... }: {
  imports = [ ../../home-manager ];

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
    tmp.useTmpfs = true;
  };

  networking.networkmanager.enable = true;

  time.timeZone = "Europe/Paris";

  i18n.defaultLocale = "en_GB.UTF-8";

  zramSwap = { enable = true; };

  hardware = {
    enableRedistributableFirmware = true;
    bluetooth.enable = true;
  };

  security.rtkit.enable = true;
  services = {
    fstrim.enable = true;
    fwupd = { enable = true; };
  };

  systemd.extraConfig = ''
    DefaultTimeoutStopSec=10s
  '';

  environment.pathsToLink = [ "/share/zsh" ];

  programs.zsh.enable = true;

  users.users.jessew = {
    isNormalUser = true;
    extraGroups = [ "libvirtd" "networkmanager" "wheel" ];
    shell = pkgs.zsh;
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEoDpeLv3ZiLr4T0RTFtpKtE66qEzMxuzk/BHA97YUEX contact@cpluspatch.com"
    ];
  };

  virtualisation = {
    libvirtd.enable = true;
    docker.enable = true;
  };

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.11"; # Did you read the comment?
}
