{
  imports = [ ./system.nix ];
  home-manager.users.jessew = { ... }: { imports = [ ./home-manager ]; };
}
