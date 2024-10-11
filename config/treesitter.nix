{pkgs, ...}: let
  nu-grammar = pkgs.tree-sitter.buildGrammar {
    language = "nu";
    version = "0.0.0+rev=e3b4c96";
    src = pkgs.fetchFromGitHub {
      owner = "nushell";
      repo = "tree-sitter-nu";
      rev = "e3b4c967937cad628dca09bd098cd780d8288750";
      hash = "sha256-DlvBRKDXOJCqyJE0BJn8omqF50pQmnceiYsihJa/opg=";
    };
  };
in {
  filetype.extension.nu = "nu";

  plugins.treesitter = {
    enable = true;
    nixvimInjections = true;

    languageRegister.nu = "nu";

    grammarPackages =
      [nu-grammar]
      ++ (with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
        rust
        yaml
        xml
        vim
        typescript
        toml
        sql
        readline
        python
        php
        nix
        ninja
        meson
        lua
        luadoc
        latex
        kotlin
        json5
        json
        javascript
        java
        ini
        hyprlang
        http
        html
        groovy
        go
        glsl
        gitignore
        gitcommit
        gitattributes
        git_rebase
        git_config
        gdscript
        diff
        dart
        cuda
        csv
        css
        cpp
        cmake
        c_sharp
        c
        bibtex
        bash
        awk
      ]);

    # grammarPackages = [nu-grammar] ++ pkgs.vimPlugins.nvim-treesitter.allGrammars;

    settings = {
      indent.enable = true;
      highlight.enable = true;
      incremental_selection = {
        enable = true;
        keymaps = {
          init_selection = false;
          node_decremental = "<A-CR>";
          node_incremental = "<CR>";
          # scope_incremental = "grc";
        };
      };
    };
  };

  extraPlugins = [
    nu-grammar
  ];

  # extraFiles = {
  #   "/queries/nu/highlights.scm".text = builtins.readFile "${nu-grammar}/queries/nu/highlights.scm";
  #   "/queries/nu/injections.scm".text = builtins.readFile "${nu-grammar}/queries/nu/injections.scm";
  # };

  # extraConfigLua =
  #   /*
  #   lua
  #   */
  #   ''
  #     local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
  #
  #     parser_config.nu = {
  #       filetype = "nu",
  #     }
  #   '';
}
