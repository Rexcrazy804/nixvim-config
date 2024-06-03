{
  plugins = {
    cmp = {
      enable = true;

      settings = {
        window = {
          completion.border = ["╭" "─" "╮" "│" "╯" "─" "╰" "│"];
          textdocumentation.border = ["╭" "─" "╮" "│" "╯" "─" "╰" "│"];
        };

        completion.completeopt = "noselect";

        performance = {
          debounce = 60;
          fetchingTimeout = 200;
          maxViewEntries = 30;
        };

        mapping = {
          "<C-d>" = "cmp.mapping.scroll_docs(-4)";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<C-Space>" = "cmp.mapping.complete()";
          "<C-e>" = "cmp.mapping.abort()";
          "<CR>" = "cmp.mapping.confirm({ select = true })";
          "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
          "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
        };

        sources = [
          {name = "path";}
          {name = "nvim_lsp";}
          {name = "buffer";}
        ];
      };
    };

    cmp-nvim-lsp.enable = true;
    cmp-buffer.enable = true;
    cmp-path.enable = true;
    cmp-emoji.enable = true;
  };
}
