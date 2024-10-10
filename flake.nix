{
  description = "A Nix flake for creating an R development environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };

        packages = with pkgs; [
          direnv
          pandoc
          quarto
          R
          radianWrapper
        ];

        rPackages = with pkgs.rPackages; [
          languageserver
          tidyverse
          tinytex
        ];

        texlivePackages = with pkgs.texlive; [
          (combine {
            inherit scheme-small;
            # Add additional texlive packages here if needed
          })
        ];

        allPackages = packages ++ rPackages ++ texlivePackages;
      in
      {
        devShell = pkgs.mkShell {
          buildInputs = allPackages;

          shellHook = ''
            echo "Activating R development environment..."
          '';
        };
      });
}
