{ pkgs, ... }: {
  programs.vscode = {
    enable = true;
    package = pkgs.vscode;
    extensions = with pkgs.vscode-marketplace; [
      mrmlnc.vscode-json5
      editorconfig.editorconfig
      gruntfuggly.todo-tree
      ms-toolsai.jupyter-keymap
      twxs.cmake
      slevesque.shader
      yzhang.markdown-all-in-one
      vue.volar
      csstools.postcss
      nuxt.mdc
      antfu.goto-alias
      nuxtr.nuxtr-vscode
      ms-toolsai.vscode-jupyter-slideshow
      ms-toolsai.vscode-jupyter-cell-tags
      samuelepignone.fakedonalds
      kimuson.ts-type-expand
      biomejs.biome
      dcortes92.freemarker
      dtoplak.vscode-glsllint
      dbaeumer.vscode-eslint
      dbaeumer.vscode-eslint
      fastly.vscode-fastly-vcl
      takumii.markdowntable
      inlang.vs-code-extension
      jock.svg
      ms-toolsai.jupyter-renderers
      mkhl.direnv
      pinage404.nix-extension-pack
      arrterian.nix-env-selector
      esbenp.prettier-vscode
      vivaxy.vscode-conventional-commits
      jnoortheen.nix-ide
      bierner.markdown-preview-github-styles
      github.vscode-github-actions
      antfu.goto-alias
      ms-toolsai.jupyter-renderers
      antfu.goto-alias
      ms-toolsai.jupyter-renderers
      orta.vscode-jest
      antfu.goto-alias
      ms-python.isort
      ms-python.black-formatter
      davidlday.languagetool-linter
      yoavbls.pretty-ts-errors
      oracle.oracle-java
      vue.volar
      # Removed because it's fucked up on NixOS
      # ms-vscode.cpptools
      ms-vscode-remote.remote-containers
      github.vscode-pull-request-github
      github.copilot-chat
      github.copilot-chat
      ms-python.pylint
      github.copilot-chat
      ms-python.vscode-pylance
      github.copilot-chat
      ms-python.debugpy
      svelte.svelte-vscode
      prisma.prisma
      oven.bun-vscode
      github.copilot-chat
      bradlc.vscode-tailwindcss
      tamasfe.even-better-toml
      antfu.unocss
      nuxtr.nuxt-vscode-extentions
      unifiedjs.vscode-mdx
      dabolus.uncanny-cognitive-complexity
      ms-vscode.js-debug
      ms-vscode.vscode-js-profile-flame
      ms-toolsai.jupyter
      github.vscode-pull-request-github
      pkief.material-icon-theme
      ms-vsliveshare.vsliveshare
      eamodio.gitlens
      ms-python.python
      github.copilot
    ];
    userSettings = {
      explorer = {
        confirmDelete = false;
      };

      files = {
        autoSave = "onFocusChange";
        associations = {
          "*.css" = "tailwindcss";
        };
      };

      editor = {
        insertSpaces = false;
        fontFamily = "JetBrainsMono Nerd Font Mono";
        fontLigatures = true;
        detectIndentation = false;
        suggestSelection = "first";
        cursorBlinking = "phase";
        cursorSmoothCaretAnimation = true;
        defaultFormatter = "esbenp.prettier-vscode";
        formatOnPaste = true;
        linkedEditing = true;
        formatOnSave = true;
      };

      python = {
        languageServer = "Pylance";
      };

      todo-tree = {
        tree = {
          showScanModeButton = false;
        };
      };

      git = {
        autofetch = true;
        enableSmartCommit = true;
        confirmSync = false;
        enableCommitSigning = true;
      };

      beautify = {
        language = {
          html = [ "html" "php" "erb" ];
          css = [ ];
          js = [ ];
        };
      };

      workbench = {
        colorTheme = "Dark Modern";
        editorAssociations = {
          "*.ipynb" = "jupyter.notebook.ipynb";
        };
        iconTheme = "material-icon-theme";
        productIconTheme = "fluent-icons";
      };

      scm = {
        inputFontFamily = "editor";
      };

      debug = {
        console = {
          fontFamily = "editor";
        };
      };

      terminal = {
        integrated = {
          fontFamily = "JetBrainsMono Nerd Font Mono";
          defaultProfile = {
            linux = "zsh";
          };
        };
      };

      vsintellicode = {
        modify = {
          editor = {
            suggestSelection = "automaticallyOverrodeDefaultValue";
          };
        };
      };

      security = {
        workspace = {
          trust = {
            enabled = false;
          };
        };
      };

      "[javascript]" = {
        editor = {
          defaultFormatter = "esbenp.prettier-vscode";
        };
      };

      "[dart]" = {
        editor = {
          formatOnType = true;
          rulers = [ 80 ];
          selectionHighlight = false;
          suggest.snippetsPreventQuickSuggestions = false;
          suggestSelection = "first";
          tabCompletion = "onlySnippets";
          wordBasedSuggestions = false;
        };
      };

      "[nix]" = {
        editor = {
          defaultFormatter = "jnoortheen.nix-ide";
        };
      };

      vsicons = {
        dontShowNewVersionMessage = true;
      };

      github = {
        copilot = {
          enable = {
            "*" = true;
            yaml = false;
            plaintext = true;
            markdown = true;
          };
        };
        pullRequests = {
          createOnPublishBranch = "never";
        };
      };

      javascript = {
        updateImportsOnFileMove = {
          enabled = "always";
        };
      };

      redhat = {
        telemetry = {
          enabled = false;
        };
      };

      window = {
        titleBarStyle = "custom";
        commandCenter = true;
      };

      prettier = {
        bracketSameLine = true;
        tabWidth = 4;
        useTabs = true;
      };

      typescript = {
        updateImportsOnFileMove = {
          enabled = "always";
        };
      };

      "[css]" = {
        editor = {
          defaultFormatter = "vscode.css-language-features";
        };
      };

      telemetry = {
        telemetryLevel = "off";
      };

      sherlock = {
        userId = "ed65f52d-53aa-49cb-9302-a1291faecd28";
      };

      nix = {
        enableLanguageServer = true;
        serverSettings = {
          nil = {
            formatting = {
              command = [ "nixpkgs-fmt" ];
            };
          };
        };
      };
    };

  };
}
