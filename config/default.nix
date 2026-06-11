{ pkgs, ... }:
{
  # Import all your configuration modules here
  imports = [
    ./bufferline.nix
    ./diagnostics.nix
    ./llm.nix
    ./tmux.nix
    ./lsp.nix
    ./debug.nix
    ./latex.nix
    ./git.nix
    ./neotree.nix
    ./terminal.nix
    ./telescope.nix
    ./cmp.nix
    ./todo.nix
  ];

  config = {
    colorschemes.gruvbox.enable = true;

    # Use Space as leader key
    globals.mapleader = " ";

    opts = {
      number = true;
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
      nerdcommenter
    ];

    keymaps = [
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
