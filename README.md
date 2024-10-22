# R Development flake

> This flake is for cloning into a [NixOS or Nix enabled system](https://nixos.org/download/) with `direnv` and `nix-direnv` installed[^1]. It provides a development environment for R projects. It supports Intel and ARM architectures as well as Linux and Darwin operating systems.

[^1]: A direct installation of `nix-direnv` can be done with `nix-env -iA nixpkgs.direnv`. For a longer-term solution, you can add it to your `configuration.nix` file.

## Usage

1. Clone this repository into your desired location.
2. Run `direnv allow` to allow the environment to be loaded automatically.

## Features

The flake.lock file is used to pin the versions of the packages. The `R` environment is set up with the following packages:

R version 4.4.1 (2024-06-14) \
Quarto 1.5.57 \
Pandoc 3.1.11.1 \
Radian 0.6.13

- {tidyverse@2.0.0}
- {languageserver@0.3.16}
- {tinytex@0.52}

## Modifying

You can modify the flake.nix file to include additional packages. Afterwards, the next shell command will trigger a rebuild of the environment.

## Updating

You can update the flake.lock file by running `nix flake update`. This will update the flake.lock file with the latest versions of the packages.
