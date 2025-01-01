{ inputs, pkgs, ... }:

{
  imports = [
    ./bluetooth.nix
    ./network.nix
    ./nvidia.nix
    ./zram.nix
  ];
}
