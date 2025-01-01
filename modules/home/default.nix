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
  
  ];
}
