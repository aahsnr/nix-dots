{ config, pkgs, inputs, ...}:

{
  imports = [
    ./bootloader.nix
    ./console.nix
    #./bluetooth.nix
    ./i18n.nix
    ./flatpak.nix
    ./network.nix
    ./packages.nix
    ./nix.nix
    ./polkit.nix
    #./system.nix
    ./users.nix
    ./zsh.nix
    #./hardening.nix
   ];
}
