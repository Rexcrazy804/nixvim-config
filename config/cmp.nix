let 
  get_bufnrs.__raw = ''
    function()
      local buf_size_limit = 1024 * 1024 -- 1MB size limit
      local bufs = vim.api.nvim_list_bufs()
      local valid_bufs = {}
      for _, buf in ipairs(bufs) do
        if vim.api.nvim_buf_is_loaded(buf) and vim.api.nvim_buf_get_offset(buf, vim.api.nvim_buf_line_count(buf)) < buf_size_limit then
          table.insert(valid_bufs, buf)
        end
      end
      return valid_bufs
    end
  '';
in {
  plugins = {
    cmp = {
      enable = true;
      settings = {
        window = {
          completion.border = ["╭" "─" "╮" "│" "╯" "─" "╰" "│"];
          documentation.border = ["╭" "─" "╮" "│" "╯" "─" "╰" "│"];
        };

        completion.completeopt = "noselect";

        performance = {
          debounce = 60;
          fetchingTimeout = 200;
          maxViewEntries = 30;
        };

        mapping = {
          "<C-k>" = "cmp.mapping.scroll_docs(-4)";
          "<C-j>" = "cmp.mapping.scroll_docs(4)";
          "<C-Space>" = "cmp.mapping.complete()";
          "<C-e>" = "cmp.mapping.abort()";
          "<CR>" = "cmp.mapping.confirm({ select = true })";
          "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
          "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
        };

        formatting.fields = ["kind" "abbr" "menu"];

        sources = [
          {
            name = "path";
            options = {
              inherit get_bufnrs;
            };
          }
          {
            name = "nvim_lsp";
            priority = 1000;
            option = {
                inherit get_bufnrs;
            };
          }
          {
            name = "buffer"; 
            options = {
              inherit get_bufnrs;
            };
          }
        ];
      };
    };

    cmp-nvim-lsp.enable = true;
    cmp-buffer.enable = true;
    cmp-path.enable = true;
  };
}
