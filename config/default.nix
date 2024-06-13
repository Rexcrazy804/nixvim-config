{
  # Import all your configuration modules here
  imports = [
    ./keymaps.nix
    ./theme.nix
    ./generic.nix
    ./lsp.nix
    ./cmp.nix
    ./telescope.nix
    ./lualine.nix
  ];

  opts = {
    number = true;
    termguicolors = true;
    cmdheight = 0;
    relativenumber = true;
    cursorline = true;
    cursorlineopt = "number";
    signcolumn = "yes";

    expandtab = true;
    shiftwidth = 2;
    smartindent = true;
    tabstop = 2;
    softtabstop = 2;

    ignorecase = true;
    smartcase = true;
    undofile = true;
    wrap = false;

    scrolloff = 5;
  };

  globals.mapleader = " ";
}
