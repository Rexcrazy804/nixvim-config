{
  plugins = {
    web-devicons.enable = true;
    nix.enable = true;
    neo-tree.enable = true;
    neocord.enable = true;
    nvim-colorizer.enable = true;
    which-key.enable = true;
    nvim-autopairs.enable = true;
    gitsigns.enable = true;

    flash = {
      enable = true;
      settings = {
        search.mode = "fuzzy";
        modes = {
          search.enabled = true;
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
          show_exact_scope = false;
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
