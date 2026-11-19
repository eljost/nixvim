{
  config = {
    keymaps = [
      {
        mode = "n";
        key = "<leader>c<leader>";
        action.__raw = ''
          function()
            vim.cmd("normal " .. vim.v.count1 .. "gcc")
          end
        '';
        options.desc = "Toggle comment";
      }
      {
        mode = "x";
        key = "<leader>c<leader>";
        action = "gc";
        options = {
          remap = true;
          desc = "Toggle comment on selection";
        };
      }
      # Comment <leader>cc
      {
        mode = "n";
        key = "<leader>cc";
        action.__raw = ''
          function()
            vim.cmd("normal " .. vim.v.count1 .. "gcc")
          end
        '';
        options.desc = "Comment lines";
      }
      {
        mode = "x";
        key = "<leader>cc";
        action = "gc";
        options = {
          remap = true;
          desc = "Comment selection";
        };
      }

      # Comment and yank <leader>cy
      {
        mode = "n";
        key = "<leader>cy";
        action.__raw = ''
          function()
            local n = vim.v.count1
            vim.cmd("normal! " .. n .. "yy")
            vim.cmd("normal " .. n .. "gcc")
          end
        '';
        options.desc = "Copy lines and comment";
      }
      {
        mode = "x";
        key = "<leader>cy";
        action = "ygvgc";
        options = {
          remap = true;
          desc = "Copy selection and comment";
        };
      }
    ];
  };
}
