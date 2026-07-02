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
    autoCmd = [
      {
        # This autocommands reverts the "normal mode" <ESC> mapping defined
        # terminal.nix to <C-\><C-n> for quicker terminal closing and maps
        # it back to <ESC>. Without this fix, lazygit dialogs can't be aborted.
        event = "FileType";
        pattern = "lazygit";
        callback.__raw = ''
          function(ev)
            vim.keymap.set("t", "<ESC>", "<ESC>", { buffer = ev.buf, noremap = true })
          end
        '';
      }
    ];
  };
}
