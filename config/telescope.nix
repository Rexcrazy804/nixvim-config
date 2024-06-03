{
  plugins.telescope = {
    enable = true;
    highlightTheme = "catpuccin";
    settings = {
      defaults = {
        layout_config.prompt_position = "top";
        sorting_strategy = "ascending";
      };
    };

    extensions = {
      fzf-native.enable = true;
    };
  };
}
