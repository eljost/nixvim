{ pkgs, ... }:
{
  config = {
    plugins = {
      lsp = {
        enable = true;
        servers = {
          #dartls.enable = true;
          gopls.enable = true;
          nixd = {
            enable = true;
            settings = {
              nixpkgs = {
                # This hardcodes nixpkgs to the one of this flake.nix,
                # so it will also work on non-NixOS systems.
                expr = "import ${pkgs.path} { }";
              };
              formatting = {
                command = [ "nixfmt" ];
              };
            };
          };
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
        sources.formatting = {
          black.enable = true;
          #dart_format.enable = true;
          goimports.enable = true;
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
