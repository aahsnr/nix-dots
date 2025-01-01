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

  python311optimized = pkgs.python311.override {
    self = python311optimized;
    enableOptimizations = true;
    reproducibleBuild = false;
    packageOverrides = python-self: python-super: {
      curio = python-super.curio.overridePythonAttrs (oldAttrs: {
        doCheck = false; doInstallCheck = false;
      });
      cffi = python-super.cffi.overridePythonAttrs (oldAttrs: {
        doCheck = false; doInstallCheck = false;
      });
      websockets = python-super.websockets.overridePythonAttrs (oldAttrs: {
        doCheck = false; doInstallCheck = false;
      });
      SQLAlchemy = python-super.SQLAlchemy.overridePythonAttrs (oldAttrs: {
        doCheck = false; doInstallCheck = false;
      });
    };
  };

  # elfutils = pkgs.elfutils.override {
  #   doCheck = false;
  #   doInstallCheck = false;
  #   enableParallelBuilding = false;
  #   enableDebuginfod = false;
  # };

in {
  environment.systemPackages = with pkgs; [
    # (python311optimized.withPackages (p: with p; [
    #   cython_3
    #   jupyter
    #   pip
    #   setuptools
    #   #tensorflowWithCuda
    # ]))
    #gccoptimized
    cachix
    cmake
    wget
    lazygit
    linux-firmware
    btop
    bleachbit
    fd
    gnumake
    chkrootkit
    killall
    tealdeer
    tree
    openssl
    gnumake
    element-desktop
    insync
    lutris
    lsd
    git
    cached-nix-shell 
    fastfetch
    fd
    ffmpeg
    fzf
    lynis
    unzip
    ripgrep
    pymol
    imagemagick
    deluge
    jq
    networkmanagerapplet
    lm_sensors
    lynis
    lsd
    btop
    gh
    xournalpp
  ];

}
