{ inputs, pkgs, ... }:
let fenixPkgs = inputs.fenix.packages.${pkgs.stdenv.system};
in {
  imports = [ ./vscode.nix ];
  
  home = {

    file.".config/ghostty/config".text = ''
      theme = Dark Modern
      font-size = 11
    '';

    sessionVariables.RUST_SRC_PATH =
      "${fenixPkgs.complete.rust-src}/lib/rustlib/src/rust/library";
  };
}
