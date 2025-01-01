{ config, pkgs, inputs, ...}:

{
  imports = [
    ./kernel
    ./console.nix
    #./bluetooth.nix
    ./hardware
    ./i18n.nix
    ./locale.nix
    #./flatpak.nix
    ./fonts
    ./network.nix
    ./packages.nix
    ./nix.nix
    ./polkit.nix
    #./system.nix
    ./users.nix
    ./zram.nix
    ./zsh.nix
   ];
}
