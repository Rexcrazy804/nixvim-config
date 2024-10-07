let
  colors = {
    black = "#282828";
    white = "#cdd6f4";
    red = "#f38ba8";
    green = "#a6e3a1";
    lavender = "#b4befe";
    blue = "#89b4fa";
    yellow = "#fe8019";
    gray = "#1e1e2e";
    darkgray = "#181825";
    lightgray = "#313244";
    transparent = "";
  };
in {
  plugins.lualine = {
    enable = true;
    settings = {
      tabline = {
        lualine_a = ["buffers"];
      };
      options = {
        globalstatus = true;
        componentSeparators = {
          left = "";
          right = "";
        };
        sectionSeparators = {
          left = "";
          right = "";
        };
        theme = {
          normal = {
            a = {
              bg = colors.lavender;
              fg = colors.black;
              gui = "bold";
            };
            b = {
              bg = colors.lightgray;
              fg = colors.lavender;
            };
            c = {
              bg = colors.transparent;
              fg = colors.white;
            };
          };
          insert = {
            a = {
              bg = colors.blue;
              fg = colors.black;
              gui = "bold";
            };
            b = {
              bg = colors.lightgray;
              fg = colors.blue;
            };
            c = {
              bg = colors.transparent;
              fg = colors.white;
            };
          };
          visual = {
            a = {
              bg = colors.red;
              fg = colors.black;
              gui = "bold";
            };
            b = {
              bg = colors.lightgray;
              fg = colors.red;
            };
            c = {
              bg = colors.transparent;
              fg = colors.white;
            };
          };
          replace = {
            a = {
              bg = colors.yellow;
              fg = colors.black;
              gui = "bold";
            };
            b = {
              bg = colors.lightgray;
              fg = colors.yellow;
            };
            c = {
              bg = colors.transparent;
              fg = colors.white;
            };
          };
          command = {
            a = {
              bg = colors.green;
              fg = colors.black;
              gui = "bold";
            };
            b = {
              bg = colors.lightgray;
              fg = colors.green;
            };
            c = {
              bg = colors.transparent;
              fg = colors.white;
            };
          };
          inactive = {
            a = {
              bg = colors.transparent;
              fg = colors.lavender;
              gui = "bold";
            };
            b = {
              bg = colors.transparent;
              fg = colors.lavender;
            };
            c = {
              bg = colors.transparent;
              fg = colors.white;
            };
          };
        };
      };
    };
  };
}
