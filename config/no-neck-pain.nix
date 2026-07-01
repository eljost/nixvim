{ pkgs, ... }:
{
  config = {
    plugins = {
      no-neck-pain = {
        enable = true;
        settings = {
          autocmds = {
            enableOnVimEnter = true;
          };
        };
      };
    };
  };
}
