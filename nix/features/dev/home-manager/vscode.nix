{ pkgs, ... }: {
  programs.vscode = {
    enable = true;
    package = pkgs.vscode;
    extensions = with pkgs.vscode-marketplace; [
      mrmlnc.vscode-json5
      editorconfig.editorconfig
      gruntfuggly.todo-tree
      tyriar.luna-paint
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
      github.vscode-pull-request-github
      prisma.prisma
      oven.bun-vscode
      ms-toolsai.jupyter
      github.vscode-pull-request-github
      github.copilot-chat
      deque-systems.vscode-axe-linter
      github.vscode-pull-request-github
      ms-toolsai.jupyter
      github.copilot-chat
      github.copilot-chat
      ms-toolsai.jupyter
      bradlc.vscode-tailwindcss
      tamasfe.even-better-toml
      antfu.unocss
      nuxtr.nuxt-vscode-extentions
      codeium.codeium
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
      github.vscode-pull-request-github
      github.copilot-chat
      github.copilot
      github.vscode-pull-request-github
      github.copilot-chat
    ];
    userSettings = {
      "window" = {
        "titleBarStyle" = "custom";
        "dialogStyle" = "custom";
      };
      "workbench" = { "iconTheme" = "material-icon-theme"; };
      "git" = {
        "enableSmartCommit" = true;
        "autofetch" = true;
        "confirmSync" = false;
      };
      "github" = {
        "copilot" = {
          "enable" = {
            "*" = true;
            "plaintext" = true;
            "markdown" = true;
            "scminput" = false;
          };
          "editor" = { "enableAutoCompletions" = true; };
        };
      };
      "gitlens" = {
        "ai" = {
          "experimental" = {
            "provider" = "openai";
            "openai" = { "model" = "gpt-4-32k"; };
          };
        };
      };
      "extensions" = { "ignoreRecommendations" = true; };
      "editor" = {
        "formatOnSave" = true;
        "quickSuggestions" = { "strings" = true; };
        "detectIndentation" = false;
        "wordWrap" = "on";
        "fontFamily" = "'JetBrainsMono NF', 'monospace', monospace";
      };
      "eslint" = { "format" = { "enable" = true; }; };
      "files" = {
        "autoSave" = "onFocusChange";
        "associations" = { "*.css" = "tailwindcss"; };
      };
      "tailwindCSS" = { "includeLanguages" = { "markdown" = "html"; }; };
      "workbench" = {
        "editorAssociations" = {
          "*.png" = "imagePreview.previewEditor";
          "*.webp" = "imagePreview.previewEditor";
        };
      };
      "languageToolLinter" = {
        "languageTool" = { "motherTongue" = "fr"; };
        "serviceType" = "public";
      };
      "nuxtr" = {
        "defaultPackageManager" = "Bun";
        "vueFiles" = { "style" = { "addStyleTag" = false; }; };
      };
      "diffEditor" = { "ignoreTrimWhitespace" = false; };
      "dev" = { "containers" = { "dockerPath" = "/usr/bin/docker"; }; };
      "svelte" = { "enable-ts-plugin" = true; };
      "sherlock" = {
        "userId" = "deaf19be-72da-43e6-83f0-28a996b663da";
        "inlineAnnotations" = { "enabled" = true; };
      };
      "svg" = { "preview" = { "mode" = "svg"; }; };
      "[vue]" = { "editor.defaultFormatter" = "biomejs.biome"; };
      "[typescriptreact]" = { "editor.defaultFormatter" = "biomejs.biome"; };
      "[mdx]" = { "editor.defaultFormatter" = "unifiedjs.vscode-mdx"; };
      "[json]" = { "editor.defaultFormatter" = "biomejs.biome"; };
      "[jsonc]" = { "editor.defaultFormatter" = "biomejs.biome"; };
      "[css]" = { "editor.defaultFormatter" = "biomejs.biome"; };
      "[python]" = { "editor.defaultFormatter" = "ms-python.black-formatter"; };
      "[typescript]" = { "editor.defaultFormatter" = "biomejs.biome"; };
      "[cpp]" = { "editor.defaultFormatter" = "ms-vscode.cpptools"; };
    };
  };
}
