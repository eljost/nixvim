{
  config = {
    plugins = {
      neo-tree = {
        enable = true;
      };
    };
    keymaps = [
      {
        key = "<leader>e";
        mode = "n";
        action = ":Neotree toggle<CR>";
      }
    ];
  };
}
