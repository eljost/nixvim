{
  config = {
    plugins = {
      lsp = {
        enable = true;
        servers = {
          dartls.enable = true;
          gopls.enable = true;
          nixd.enable = true;
          pyright.enable = true;
          ruff.enable = true;
          terraformls.enable = true;
          texlab.enable = true;
        };
      };

      lsp-format = {
        enable = true;
      };

      lsp-signature = {
        enable = true;
      };

      none-ls = {
        enable = true;
        sources.formatting.black = {
          enable = true;
        };
        sources.formatting.dart_format = {
          enable = true;
        };
      };
    };
    keymaps = [
      {
        key = "gd";
        mode = "n";
        action = "<cmd>lua vim.lsp.buf.definition()<CR>";
      }
    ];
  };
}
