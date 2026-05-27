{
  config = {
    plugins = {
      # Fuzzy finder
      telescope = {
        enable = true;
      };
    };
    keymaps = [
      {
        key = "<leader>ff";
        mode = "n";
        action = ":Telescope find_files<CR>";
      }
      {
        key = "<leader>fw";
        mode = "n";
        action = ":Telescope live_grep<CR>";
      }
    ];
  };
}
