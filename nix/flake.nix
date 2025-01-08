{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";
    fenix = {
      url = "github:nix-community/fenix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    ghostty = { url = "github:ghostty-org/ghostty"; };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-vscode-extensions = {
      url = "github:nix-community/nix-vscode-extensions";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { fenix, nixpkgs, ghostty, nix-vscode-extensions, ... }@inputs:
    let lib = nixpkgs.lib;
    in {
      nixosConfigurations = {
        hacktop = lib.nixosSystem {
          system = "x86_64-linux";
          modules = [
            {
              nixpkgs.overlays = [
                fenix.overlays.default
                ghostty.overlays.default
                nix-vscode-extensions.overlays.default
              ];
            }
            ./machines/hacktop
          ];
          specialArgs = { inherit inputs; };
        };

        qemu = lib.nixosSystem {
          system = "x86_64-linux";
          modules = [
            {
              nixpkgs.overlays = [
                fenix.overlays.default
                ghostty.overlays.default
                nix-vscode-extensions.overlays.default
              ];
            }
            ./machines/qemu
          ];
          specialArgs = { inherit inputs; };
        };
      };
      formatter.x86_64-linux = nixpkgs.legacyPackages.x86_64-linux.alejandra;
    };
}
