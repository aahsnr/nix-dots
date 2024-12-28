{ config, pkgs, ...}:

{
  services.flatpak.enable = true;

  systemd.services.flatpak-repo = {
    wantedBy = [ "multi-user.target" ];
    path = [ pkgs.flatpak ];
    script = ''
      flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
    '';
    };

  xdg.portal = {
    enable = true;
    config.common = {
      default = [
        "gtk"
        "hyprland"
      ];
      "org.freedesktop.impl.portal.Secret" = [
        "gnome-keyring"
      ];
    };
  };
}
