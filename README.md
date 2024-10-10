# R Development flake

> This flake is for cloning into a NixOS or Nix enabled system with `direnv` and `nix-direnv` installed. It provides a development environment for R projects. It supports Intel and ARM architectures as well as Linux and Darwin operating systems.

## Usage

1. Clone this repository into your desired location.
2. Run `direnv allow` to allow the environment to be loaded.

## Features

The flake.lock file is used to pin the versions of the packages. The `R` environment is set up with the following packages:

R version 4.4.1 (2024-06-14) \
Quarto 1.5.57 \
Pandoc 3.1.11.1 \
Radian 0.6.13 \

- {tidyverse@2.0.0}
- {languageserver@0.3.16}
- {tinytex@0.52}

## Updating

You can update the flake.lock file by running `nix flake update`. This will update the flake.lock file with the latest versions of the packages.
