{ pkgs, ... }:

{
  programs.mpv = {
    enable = true;
    defaultProfiles = ["gpu-hq"];
    config.osc = false;
    scripts = with pkgs.mpvScripts; [mpris thumbnail sponsorblock];
    config = {
      save-position-on-quit = true;
    };
  };
}
