config, ... }: 

{
  programs.gpg = {
    enable = true;
    homedir = "${config.home.homeDirectory}/.gnupg";
    settings = {
      default-key = "B820F6E378AC9A3D";
    };
  };
}
