let
  pkgs = import <nixpkgs> {};
  stdenv = pkgs.stdenv;
  node2nix = import ./node2nix {};
  unstablePkgs = import ../../NixOS/nixpkgs-channels/pkgs/top-level/impure.nix {};
in stdenv.mkDerivation rec {
  name = "purescript-experiments";
  buildInputs = [
    pkgs.nodejs
    pkgs.nodePackages.npm
    pkgs.nodePackages.grunt-cli
    pkgs.nodePackages.bower
    unstablePkgs.haskellPackages.purescript
    node2nix.pulp
  ];
}

