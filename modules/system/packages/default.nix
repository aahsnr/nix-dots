{config, pkgs, fastStdenv, ... }:

let
  # pkgs = import <nixpkgs> {
  #   overlays = [
  #     (self: super: {
  #       stdenv = super.impureUseNativeOptimizations super.stdenv;
  #     })
  #   ];
  # };

  gccoptimized = pkgs.gcc-unwrapped.override {
    langJit = true;
    profiledCompiler = true;
    enableLTO = true;
    reproducibleBuild = false;
  };

  # elfutils = pkgs.elfutils.override {
  #   doCheck = false;
  #   doInstallCheck = false;
  #   enableParallelBuilding = false;
  #   enableDebuginfod = false;
  # };

in {
  environment.systemPackages = with pkgs; [
    #gccoptimized
    bleachbit
    brave
    btop
    cached-nix-shell
    cachix
    cargo
    chkrootkit
    cmake
    deluge-gtk
    element-desktop
    fastfetch
    fd
    ffmpeg
    fzf
    gnumake
    imagemagick
    jq
    killall
    linux-firmware
    lm_sensors
    lsd
    lutris
    lynis
    nodejs
    openssl
    pymol
    ripgrep
    tealdeer
    tree
    typescript
    unzip
    wget
    xournalpp
  ];
}
