{ inputs, pkgs, ... }:

{
  imports = [
    ./amd.nix
    ./bluetooth.nix
    #./intel.nix
    ./network.nix
    ./nvidia.nix
  ];
}
