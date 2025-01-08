{ ... }: {
  imports = [
    ./hardware-configuration.nix
    ../base
    ../../features/packages.nix
    ../../features/desktop
    ../../features/dev
    ../../features/ssh.nix
    ../../features/syncthing.nix
  ];

  networking.hostName = "qemu";
}
