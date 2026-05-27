{
  config = {
    plugins = {
      lsp = {
        enable = true;
        servers = {
          nil_ls.enable = true;
          pyright.enable = true;
          ruff.enable = true;
          dartls.enable = true;
          texlab.enable = true;
          terraformls.enable = true;
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
