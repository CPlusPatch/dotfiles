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

  networking.hostName = "hacktop";
  environment.etc.crypttab.text = ''
    cryptstorage UUID=2ab14ac2-2578-4ac6-b0de-2eb2afaee2a9 /root/storage.key
  '';
}
