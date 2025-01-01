{ config, pkgs, inputs, ... }:
{
  services = {
    gnome = {
      glib-networking.enable = true;
      gnome-keyring.enable = true;
    };

    acpid.enable = true;
    thermald.enable = true;
    upower.enable = true;
    udisks2.enable = true;
    fstrim.enable = true;
  };
}
