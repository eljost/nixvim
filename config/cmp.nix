{
  config = {
    plugins = {
      # Autocomplete
      cmp = {
        enable = true;
        autoEnableSources = true;
        settings.sources = [
          { name = "nvim_lsp"; }
          { name = "path"; }
          { name = "buffer"; }
          { name = "treesitter"; }
        ];
        settings.mapping = {
          "<down>" = "cmp.mapping.select_next_item()";
          "<up>" = "cmp.mapping.select_prev_item()";
          "<TAB>" = "cmp.mapping.confirm({ select = true })";
          "<C-Space>" = "cmp.mapping.complete()";
        };
      };
    };
  };
}
