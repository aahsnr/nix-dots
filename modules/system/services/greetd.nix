{ config, pkgs, inputs, ... }:
{
  services = {
    greetd = {
      enable = true;
      settings = rec {
        initial_session = {
          command = "Hyprland";
          user = "ahsan";
        };
        default_session = initial_session;
      };
    };
  };

}


