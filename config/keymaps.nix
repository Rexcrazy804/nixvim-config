{
  keymaps = [
    # buffers
    {
      action = "<CMD>BufferLineCycleNext<CR>";
      key = "<Tab>";
      options = {
        desc = "cycle next buffer";
        silent = true;
      };
    }
    {
      action = "<CMD>BufferLineCyclePrev<CR>";
      key = "<S-Tab>";
      options = {
        desc = "cycle prev buffer";
        silent = true;
      };
    }
    {
      action = "<CMD>bdelete<CR>";
      key = "<leader>x";
      options = {
        desc = "delete current buffer";
        silent = true;
      };
    }
    {
      action = "<CMD>bdelete!<CR>";
      key = "<leader>X";
      options = {
        desc = "force delete current buffer";
        silent = true;
      };
    }

    # Neotree
    {
      action = "<CMD>Neotree toggle<CR>";
      key = "<C-n>";
      options = {
        desc = "toggle Neotree pretty much";
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

    # ToggleTerm
    {
      action = "<CMD>ToggleTerm size=15 dir=git_dir direction=horizontal name=horimiya<CR>";
      key = "<A-h>";
      options = {
        desc = "Open a horizontal terminal";
        silent = true;
      };
    }
  ];
}
