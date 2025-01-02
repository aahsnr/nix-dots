{ config, pkgs, inputs, ...}:

{
  imports = [
    ./adguard
    ./amd
    ./fonts
    ./hardware
    ./kernel
    ./misc
    ./nix
    ./packages
    ./portal
    ./services
    ./users
    ./wayland
   ];
}
