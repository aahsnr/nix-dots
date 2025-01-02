{ config, ... }:

{
  wayland.windowManager.hyprland.settings = {
    exec-once = [
      "thunar --daemon"
    ];
  };
}
