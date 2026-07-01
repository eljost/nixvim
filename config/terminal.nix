{
  config = {
    plugins = {
      toggleterm = {
        enable = true;
        settings = {
          autoScroll = true;
          closeOnExit = true;
          persistMode = true;
          persistSize = true;
          direction = "horizontal";
          float_opts = {
            border = "curved";
          };
        };
      };
    };
    keymaps = [
      {
        key = "<leader>th";
        mode = "n";
        action = "<cmd>ToggleTerm size=25 direction=horizontal<CR>";
      }
      {
        key = "<leader>tv";
        mode = "n";
        #action = "<cmd>ToggleTerm size=100 direction=vertical<CR>";
        # I got used to having the editor on the right side
        action = "<cmd>ToggleTerm size=100 direction=vertical<CR> <cmd>wincmd H<CR>";
      }
      {
        key = "<leader>tf";
        mode = "n";
        action = "<cmd>ToggleTerm direction=float<CR>";
      }
      {
        key = "<C-q>";
        mode = "t";
        action = "<cmd>ToggleTerm <CR>";
      }
      {
        key = "<C-q>";
        mode = "n";
        action = "<cmd>ToggleTerm <CR>";
      }
      # "Normal mode" for the terminal
      {
        key = "<ESC>";
        mode = "t";
        # Double quotes are used here, so \ is not intepreted as
        # escape character.
        action = ''<C-\><C-n>'';
      }
    ];
  };
}
