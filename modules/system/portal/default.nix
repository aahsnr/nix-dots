{ config, pkgs, inputs, ... }: 
{
  programs.hyprland.portalPackage = inputs.xdg-portal-hyprland.packages.${pkgs.system}.default;
  xdg.portal = {
    enable = true;
    config = {
      default = [
        "hyprland"
      ];
    };
    wlr.enable = false;
    extraPortals = [
      pkgs.xdg-desktop-portal-gtk
    ];
    xdgOpenUsePortal = true;
  };
}
