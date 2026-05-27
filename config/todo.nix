{
  config = {
    plugins = {
      # Highlight certain comments
      todo-comments = {
        enable = true;
      };
    };

    keymaps = [
      {
        key = "<leader>to";
        mode = "n";
        action = "<cmd>TodoQuickFix<CR>";
      }
    ];
  };
}
