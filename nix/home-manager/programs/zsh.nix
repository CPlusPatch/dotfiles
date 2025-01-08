{ ... }: {
  programs.zsh = {
    autosuggestion.enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    initExtra = ''
      export PATH="$HOME/.bun/bin:$PATH"
      export PATH="$HOME/.local/bin:$PATH"
    '';
    shellAliases = {
      cat = "bat";
      docker-up = "docker-compose up -d";
      docker-down = "docker-compose down";
      rebuild = "sudo nixos-rebuild switch --flake './nix#hacktop'";
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
