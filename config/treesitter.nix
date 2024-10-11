{pkgs, ...}: let
  nu-grammar = pkgs.tree-sitter.buildGrammar {
    language = "nu";
    version = "0.0.0+rev=358c4f5";
    src = pkgs.fetchFromGitHub {
      owner = "nushell";
      repo = "tree-sitter-nu";
      rev = "0bb9a602d9bc94b66fab96ce51d46a5a227ab76c";
      hash = "sha256-A5GiOpITOv3H0wytCv6t43buQ8IzxEXrk3gTlOrO0K0=";
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

  extraFiles = {
    "/queries/nu/highlights.scm".text = builtins.readFile "${nu-grammar}/queries/nu/highlights.scm";
    "/queries/nu/injections.scm".text = builtins.readFile "${nu-grammar}/queries/nu/injections.scm";
  };

  extraConfigLua =
    /*
    lua
    */
    ''
      local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

      parser_config.nu = {
        filetype = "nu",
      }
    '';
}
