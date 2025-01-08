{
  imports = [
    ./eza.nix
    ./git.nix
    ./thunderbird.nix
    ./micro.nix
    ./vscode.nix
    ./zsh.nix
    ./firefox.nix
  ];

  programs = {
    atuin.enable = true;
    bat.enable = true;
    btop.enable = true;
    direnv.enable = true;
    eza.enable = true;
    firefox.enable = true;
    gh.enable = true;
    git.enable = true;
    home-manager.enable = true;
    thunderbird.enable = true;
    vscode.enable = true;
    zsh.enable = true;
    micro.enable = true;
  };
}
