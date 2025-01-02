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

  programs.home-manager.enable = true;

  imports = [
    ./anyrun
    ./bat
    ./cliphist
    ./dev
    ./eza
    ./fastfetch
    ./fzf
    ./git
    ./gpg
    ./hypridle
    ./hyprland
    ./hyprlock
    ./hyprpaper
    ./kitty
    ./lazygit
    ./mpv
    ./rofi
    ./starship
    ./tealdeer
    ./texlive
    ./theming
    ./yazi
    ./zathura
    ./zoxide
    ./zsh
  ];
}
