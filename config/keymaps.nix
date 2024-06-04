{
  keymaps = [
    # buffers
    {
      action = "<CMD>bnext<CR>";
      key = "<Tab>";
      options.desc = "Cycle next buffer";
    }
    {
      action = "<CMD>bprevious<CR>";
      key = "<S-Tab>";
      options.desc = "Cycle prev buffer";
    }
    {
      action = "<CMD>bdelete<CR>";
      key = "<leader>x";
      options.desc = "Delete current buffer";
    }
    {
      action = "<CMD>bdelete!<CR>";
      key = "<leader>X";
      options.desc = "Force delete current buffer";
    }

    # Neotree
    {
      action = "<CMD>Neotree toggle<CR>";
      key = "<C-n>";
      options.desc = "Toggle Neotree pretty much";
    }
    {
      action = "<CMD>Neotree action=focus<CR>";
      key = "<leader>e";
      options.desc = "Focus Neotree window";
    }

    # Telescope
    {
      action = "<CMD>Telescope find_files<CR>";
      key = "<leader>ff";
      options.desc = "Find Files";
    }
    {
      action = "<CMD>Telescope live_grep<CR>";
      key = "<leader>fw";
      options.desc = "Find within all Files";
    }
    {
      action = "<CMD>Telescope oldfiles<CR>";
      key = "<leader>fo";
      options.desc = "Find recently opened files";
    }
    {
      action = "<CMD>Telescope diagnostics<CR>";
      key = "<leader>lF";
      options.desc = "Find Lsp Diagnostics";
    }
    {
      action = "<CMD>Telescope lsp_document_symbols<CR>";
      key = "<leader>fd";
      options.desc = "Find LSP document symbols";
    }

    {
      action = "<CMD>Telescope lsp_workspace_symbols<CR>";
      key = "<leader>fD";
      options.desc = "Find LSP workspace symbols";
    }
  ];
}
