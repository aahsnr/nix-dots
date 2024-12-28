{ lib, ... }: 

{
  time = {
    timeZone = lib.mkDefault "Asia/Dhaka";
    hardwareClockInLocalTime = lib.mkDefault true;
  };
}
