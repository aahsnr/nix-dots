{ config, pkgs, ... }:

{
  services.cliphist = {
    enable = true;
    allowImages = true;
    extraOptions = [
      "-max-dedupe-search"
      "10"
      "-max-items"
      "500"
    ];
    systemdTargets = "graphical-session.target";
  };
}
