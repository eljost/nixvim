{ pkgs, ... }:
{
  config = {
    extraPlugins = with pkgs.vimPlugins; [
      vimux
    ];

    keymaps = [
      {
        key = "<leader>vp";
        mode = "n";
        action = ":VimuxPromptCommand<CR>";
      }
      {
        key = "<leader>vl";
        mode = "n";
        action = ":VimuxRunLastCommand<CR>";
      }
    ];
  };
}
