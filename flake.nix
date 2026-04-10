{
  description = "Basic Haskell development environment";

  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

  outputs = { nixpkgs, ... }: {
    devShells.x86_64-linux.default =
      let
        pkgs = import nixpkgs { system = "x86_64-linux"; };
      in
      pkgs.mkShell {
        packages = with pkgs.haskellPackages; [
          ghc
          cabal-install
          haskell-language-server
        ];
      };
  };
}
