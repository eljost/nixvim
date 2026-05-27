{
  config = {
    plugins = {
      dap = {
        enable = true;
      };

      dap-ui = {
        enable = true;
      };

      dap-python = {
        enable = true;
      };
    };
    keymaps = [
      {
        key = "<leader>db";
        mode = "n";
        action = ":DapToggleBreakpoint<CR>";
      }
      {
        key = "<leader>dc";
        mode = "n";
        action = ":DapContinue<CR>";
      }
      {
        key = "<leader>da";
        mode = "n";
        action = "<cmd>lua require('dap').continue({ before = get_args })<CR>";
      }
    ];
    extraConfigLua = ''
      require('dap').listeners.before.attach['dapui_config'] = require('dapui').open
      require('dap').listeners.before.launch['dapui_config'] = require('dapui').open
      require('dap').listeners.before.event_terminated['dapui_config'] = require('dapui').close
      require('dap').listeners.before.event_exited['dapui_config'] = require('dapui').close
    '';
  };
}
