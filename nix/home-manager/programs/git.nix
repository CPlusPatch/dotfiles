{ ... }: {
  programs.git = {
    enable = true;
    userName = "Jesse Wierzbinski";
    userEmail = "contact@cpluspatch.com";
    extraConfig = {
      init = { defaultBranch = "main"; };
      stash = { showIncludeUntracked = true; };
      user = { signingKey = "~/.ssh/id_ed25519.pub"; };
      commit = {
        gpgSign = true;
        sshSign = true;
      };
      gpg = { format = "ssh"; };
    };
  };
}
