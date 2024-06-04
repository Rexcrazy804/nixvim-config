{
  colorschemes.catppuccin = {
    enable = true;
    settings = {
      flavour = "mocha";
      transparent_background = true;

      dim_inactive = {
        enable = true;
        shade = "dark";
        percentage = 0.15;
      };

      integeration = {
        cmp = true;
        fidget = true;
        neotree = true;
        gitsigns = true;
        which-key = true;
        treesitter = true;
        indent_blankline.enabled = true;

        telescope = {
          enable = true;
          style = "nvchad";
        };

        native_lsp = {
          enabled = true;
          inlay_hints = {
            background = true;
          };
          underlines = {
            errors = ["underline"];
            hints = ["underline"];
            information = ["underline"];
            warnings = ["underline"];
          };
        };
      };
    };
  };
}
