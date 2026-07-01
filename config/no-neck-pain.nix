{ pkgs, ... }:
{
  config = {
    plugins = {
      no-neck-pain = {
        enable = true;
        settings = {
          autocmds = {
            # "safe" is required so no-neck-pain plays nice w/ Neo-tree.
            enableOnVimEnter = "safe";
          };
        };
      };
    };
  };
}
