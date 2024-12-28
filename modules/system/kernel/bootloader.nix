{ config, pkgs, lib, ... }:

{
  boot = {
    consoleLogLevel = 0;

    initrd = { 
      verbose = false;
      systemd.enable = true;
    };


    kernelPackages = pkgs.linuxPackages_zen;

    kernelParams = [
      "quiet"
      "splash"
      "loglevel=0"
      "udev.log_level=0"
      "rd.udev.log_level=0"
      "systemd.show_status=auto"
      "rd.systemd.show_status=auto"
    ];

    loader = {

      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot";
      };

      systemd-boot = {
        enable = true;
        editor = false;
        configurationLimit = 5;
      };

      timeout = 5;


    };

    plymouth = {
      enable = true;
      theme = "bgrt";
    };

    tmp = {
      cleanOnBoot = true;
      useTmpfs = false;
    };

  };
}
