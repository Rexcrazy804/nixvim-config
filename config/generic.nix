{
  plugins = {
    nix.enable = true;
    neo-tree.enable = true;
    neocord.enable = true;
    nvim-colorizer.enable = true;
    which-key.enable = true;

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
        direction = "horizontal";
        open_mapping = "[[<A-h>]]";
        size = 20;
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

    fidget = {
      enable = true;
      notification.window.winblend = 0;
    };
  };
}
