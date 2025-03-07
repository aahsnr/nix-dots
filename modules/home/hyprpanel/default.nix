{ inputs, ... }:

{
  imports = [ inputs.hyprpanel.homeManagerModules.hyprpanel ];

  programs.hyprpanel = {

    # Enable the module.
    # Default: false
    enable = true;

    # Automatically restart HyprPanel with systemd.
    # Useful when updating your config so that you
    # don't need to manually restart it.
    # Default: false
    systemd.enable = true; # want to manually restart it

    # Add '/nix/store/.../hyprpanel' to your
    # Hyprland config 'exec-once'.
    # Default: false
    # hyprland.enable = true; # setting in autostart.nix

    # Fix the overwrite issue with HyprPanel.
    # See below for more information.
    # Default: false
    overwrite.enable = true;

    # Import a theme from './themes/*.json'.
    # Default: ""
    theme = "catppuccin_macchiato_vivid";

    # Override the final config with an arbitrary set.
    # Useful for overriding colors in your selected theme.
    # Default: {}
    override = {
      theme.bar.menus.text = "#CAD3F5";
    };

    # Configure bar layouts for monitors.
    # See 'https://hyprpanel.com/configuration/panel.html'.
    # Default: null
    layout = {
      "bar.layouts" = {
        "1" = {
          left = [ "dashboard" "workspaces" "windowtitle" ];
          middle = [ "clock" ];
          right = [ "volume" "network" "bluetooth" "battery" "systray" "notifications" ];
        };
      };
    };

    # Configure and theme almost all options from the GUI.
    # Options that require '{}' or '[]' are not yet implemented,
    # except for the layout above.
    # See 'https://hyprpanel.com/configuration/settings.html'.
    # Default: <same as gui>
    settings = {
      bar.launcher.autoDetectIcon = true;
      bar.workspaces.show_icons = true;

      menus.clock = {
        time = {
          military = false;
          hideSeconds = true;
        };
        weather.unit = "metric";
      };

      menus.dashboard.directories.enabled = true;
      menus.dashboard.stats.enable_gpu = true;

      theme.bar.transparent = true;

      theme.font = {
        name = "JetBrainsMono Nerd Font";
        size = "25px";
      };
    };
  };
}
