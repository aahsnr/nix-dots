{
  description = "My NixOS configuration";

  inputs = {
    ags.url = "github:Aylur/ags";

    anyrun = {
      url = "github:Kirottu/anyrun";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    chaotic.url = "github:chaotic-cx/nyx/nyxpkgs-unstable";

    devshell.url = "github:numtide/devshell";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland.url = "github:hyprwm/Hyprland/";

    hyprland-plugins = {
      url = "github:hyprwm/hyprland-plugins";
      inputs.hyprland.follows = "hyprland";
    };

    Hyprspace = {
      url = github:KZDKM/Hyprspace;
      inputs.hyprland.follows = "hyprland";
    };

    hypridle.url = "github:hyprwm/hypridle";

    hyprlock.url = "github:hyprwm/hyprlock";

    hyprland-contrib.url = "github:hyprwm/contrib";

    matugen.url = "github:InioX/matugen";

    nil = {
      url = "github:oxalica/nil";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.rust-overlay.follows = "rust-overlay";
    };

    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    nixpkgs-wayland.url = "github:nix-community/nixpkgs-wayland";

    nixpkgs-f2k.url = "github:fortuneteller2k/nixpkgs-f2k";

    nixos-hardware.url = "github:nixos/nixos-hardware";

    nix-gaming.url = "github:fufexan/nix-gaming";

    nur.url = "github:nix-community/NUR";

    pyprland = {
      url = "github:hyprland-community/pyprland";
      inputs.nixpkgs.follows = "nixpkgs";
    };
      
    xdg-portal-hyprland.url = "github:hyprwm/xdg-desktop-portal-hyprland";

    stm.url = "github:Aylur/stm";
 
    rust-overlay = {
      url = "github:oxalica/rust-overlay";
      inputs.nixpkgs.follows = "nixpkgs";
    };
 
  };

  outputs = { 
    self, 
    nixpkgs, 
    chaotic, 
    home-manager, 
    anyrun, 
    ...

    } @ inputs: let
    system = "x86_64-linux";
    pkgs = inputs.nixpkgs.legacyPackages.x86_64-linux;
  in {
    nixosConfigurations = import ./hosts inputs;

    packages.${system} = {
      #catppuccin-folders = pkgs.callPackage ./pkgs/catppuccin-folders.nix {};
      #catppuccin-gtk = pkgs.callPackage ./pkgs/catppuccin-gtk.nix {};
      #catppuccin-cursors = pkgs.callPackage ./pkgs/catppuccin-cursors.nix {};
      # onlyoffice-deb = pkgs.callPackage ./pkgs/onlyoffice-bin.nix {};
      # insync-deb = pkgs.callPackage ./pkgs/insync-deb.nix {};
    };
  };
}
