{
  config = {
    plugins.lazygit = {
      enable = true;
    };
    keymaps = [
      {
        key = "<leader>lg";
        mode = "n";
        action = "<cmd>LazyGit<CR>";
      }
    ];
  };
}
