{ inputs, ... }: {
  imports = [ inputs.home-manager.nixosModules.home-manager ];

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    backupFileExtension = "backup";
    users.jessew = { ... }: { imports = [ ./home.nix ]; };
    extraSpecialArgs = { inherit inputs; };
  };
}
