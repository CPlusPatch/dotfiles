{ ... }: {
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    initExtra = ''
      export PATH="$HOME/.bun/bin:$PATH"
      export PATH="$HOME/.local/bin:$PATH"

      # Load p10k
      source $HOME/.p10k.zsh
    '';
    shellAliases = {
      cat = "bat";
      docker-up = "docker-compose up -d";
      docker-down = "docker-compose down";
      rebuild = "sudo nixos-rebuild switch --flake '/home/jessew/dotfiles/nix#hacktop'";
    };
    history = {
      append = true;
      size = 100000;
    };
    zplug = {
      enable = true;
      plugins = [{
        name = "romkatv/powerlevel10k";
        tags = [ "as:theme" "depth:1" ];
      }];
    };
  };
}
