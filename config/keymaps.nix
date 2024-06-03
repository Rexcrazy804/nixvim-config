{
  keymaps = [
    # buffers
    {
      action = "<CMD>bnext<CR>";
      key = "<Tab>";
      options = {
        desc = "Cycle next buffer";
        silent = true;
      };
    }
    {
      action = "<CMD>bprevious<CR>";
      key = "<S-Tab>";
      options = {
        desc = "Cycle prev buffer";
        silent = true;
      };
    }
    {
      action = "<CMD>bdelete<CR>";
      key = "<leader>x";
      options = {
        desc = "Delete current buffer";
        silent = true;
      };
    }
    {
      action = "<CMD>bdelete!<CR>";
      key = "<leader>X";
      options = {
        desc = "Force delete current buffer";
        silent = true;
      };
    }

    # Neotree
    {
      action = "<CMD>Neotree toggle<CR>";
      key = "<C-n>";
      options = {
        desc = "Toggle Neotree pretty much";
        silent = true;
      };
    }
    {
      action = "<CMD>Neotree action=focus<CR>";
      key = "<leader>e";
      options = {
        desc = "Focus Neotree window";
        silent = true;
      };
    }

    # Telescope
    {
      action = "<CMD>Telescope find_files<CR>";
      key = "<leader>ff";
      options = {
        desc = "Find Files";
        silent = true;
      };
    }
    {
      action = "<CMD>Telescope live_grep<CR>";
      key = "<leader>fw";
      options = {
        desc = "Find within all Files";
        silent = true;
      };
    }
    {
      action = "<CMD>Telescope oldfiles<CR>";
      key = "<leader>fo";
      options = {
        desc = "Find recently opened files";
        silent = true;
      };
    }
    {
      action = "<CMD>Telescope diagnostics<CR>";
      key = "<leader>lF";
      options = {
        desc = "Find Lsp Diagnostics";
        silent = true;
      };
    }
    {
      action = "<CMD>Telescope lsp_workspace_symbols<CR>";
      key = "<leader>fd";
      options = {
        desc = "Find LSP workspace symbols";
        silent = true;
      };
    }
  ];
}
