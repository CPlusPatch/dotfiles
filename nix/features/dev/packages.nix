{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    act
    bloaty
    bun
    clang-tools # For clang-format
    cloc
    cmake
    deno
    gdb
    gnumake
    llvmPackages.clang
    moreutils # For ts
    mkcert
    ninja
    nodejs
    optipng
    (poetry.withPlugins (ps: with ps; [ poetry-plugin-up ]))
    pre-commit
    python312
    python312Packages.black
    python312Packages.pip
    scc
    wasmtime
    (fenix.complete.withComponents [
      "cargo"
      "clippy"
      "rust-src"
      "rustc"
      "rustfmt"
    ])
  ];
}
