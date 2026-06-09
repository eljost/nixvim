{
  description = "A nixvim configuration";

  inputs = {
    nixvim = {
      url = "github:nix-community/nixvim";
    };
  };

  outputs =
    { nixpkgs, nixvim, ... }:
    let
      systems = [
        "x86_64-linux"
        "aarch64-linux"
      ];
      forAllSystems = nixpkgs.lib.genAttrs systems;

      # nixvim config
      config = import ./config/default.nix;
    in
    {
      packages = forAllSystems (
        system:
        let
          nixvim' = nixvim.legacyPackages.${system};
          nvim = nixvim'.makeNixvim config;
        in
        {
          inherit nvim;
          default = nvim;
        }
      );
    };
}
