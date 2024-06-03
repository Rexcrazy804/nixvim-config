{
  plugins.lualine = {
    enable = true;

    globalstatus = true;
    componentSeparators = {
      left = "";
      right = "";
    };
    sectionSeparators = {
      left = "";
      right = "";
    };

    tabline = {
      lualine_a = [
        {
          name = "buffers";
          extraConfig = {
            symbols.alternate_file = "";
          };
        }
      ];
    };
  };
}
