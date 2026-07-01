{ pkgs, ... }:
{
  # Import all your configuration modules here
  imports = [
    ./bufferline.nix
    ./cmp.nix
    ./debug.nix
    ./diagnostics.nix
    ./git.nix
    ./lsp.nix
    ./neotree.nix
    ./no-neck-pain.nix
    ./terminal.nix
    ./telescope.nix
    ./tmux.nix
    ./todo.nix
  ] ++ [
    #./llm.nix
    #./latex.nix
  ];

  config = {
    colorschemes.gruvbox.enable = true;

    # Use Space as leader key
    globals.mapleader = " ";

    opts = {
      number = true;
      # Only show absolute line number of current line
      relativenumber = true;
      expandtab = true;
      tabstop = 2;
      autoindent = true;
      shiftwidth = 2;
      ignorecase = true;
      incsearch = true;
      smartcase = true;
      confirm = true;
    };

    plugins = {
      # Indentation guides
      indent-blankline = {
        enable = true;
      };

      # Automatic closing brackets, parens, quotes
      nvim-autopairs = {
        enable = true;
      };

      # Status line
      lualine = {
        enable = true;
      };

      # Parse buffers
      treesitter = {
        enable = true;
      };
    };
    # plugins end

    # From upstream nixpkgs
    extraPlugins = with pkgs.vimPlugins; [
      # Quick commenting/uncommenting of blocks
      nerdcommenter
    ];
    # extraPlugins end

    keymaps = [
      # Quickly cycle through buffers
      {
        key = "<Tab>";
        mode = "n";
        action = ":bnext<CR>";
      }
      {
        key = "<S-Tab>";
        mode = "n";
        action = ":bprevious<CR>";
      }
    ];
    # keymaps end
  };
}
