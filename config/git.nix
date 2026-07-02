{
  config = {
    plugins.lazygit = {
      enable = true;
    };
    keymaps = [
      {
        key = "<leader>gg";
        mode = "n";
        action = "<cmd>LazyGit<CR>";
      }
      {
        key = "<leader>gf";
        mode = "n";
        action = "<cmd>LazyGitFilter<CR>";
      }
    ];
  };
}
