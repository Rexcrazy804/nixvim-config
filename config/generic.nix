{
  plugins = {
    nix.enable = true;
    neo-tree.enable = true;
    neocord.enable = true;
    nvim-colorizer.enable = true;

    bufferline = {
      enable = true;
      alwaysShowBufferline = false;
      diagnostics = "nvim_lsp";
    };

    treesitter = {
      enable = true;
      indent = true;
      nixvimInjections = true;
    };

    autoclose = {
      enable = true;
      keys = {
        "(" = {
          escape = false;
          close = true;
          pair = "()";
        };
        "[" = {
          escape = false;
          close = true;
          pair = "[]";
        };
        "{" = {
          escape = false;
          close = true;
          pair = "{}";
        };
        "<" = {
          escape = false;
          close = true;
          pair = "<>";
        };
      };
    };

    toggleterm = {
      enable = true;
      settings = {
        autochdir = true;
        direction = "float";
        float_opts = {
          border = "single";
          height = 30;
          width = 130;
        };
        open_mapping = "[[<A-i>]]";
      };
    };

    indent-blankline = {
      enable = true;
      settings = {
        scope = {
          show_end = false;
          show_exact_scope = true;
          show_start = false;
        };
      };
    };
  };
}
