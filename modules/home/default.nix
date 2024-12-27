{
  home = {
    username = "ahsan";
    homeDirectory = "/home/ahsan";
    stateVersion = "25.05";
    extraOutputsToInstall = ["doc" "info" "devdoc"];
    sessionVariables = {
      TERMINAL = "alacritty";
      EDITOR = "nvim";
      BROWSER = "brave";
    };

    sessionPath = [
      "$HOME/.local/bin"
    ];

  };

  # imports = [
  #   ./alacritty
  #   #./anyrun
  #   #./ags_setup.nix
  #   ./dev.nix
  #   #./emacs
  #   ./git
  #   #./hyprland
  #   #./mako
  #   ./mpv
  #   #./nvim
  #   ./starship
  #   ./tools
  #   #./gtk
  #   ./texlive
  #   ./zsh
  #   ./zathura
  # ];
}
