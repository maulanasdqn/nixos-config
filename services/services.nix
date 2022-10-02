
{ config, ... }:
{
  services = {
    openssh.enable = true;
    udisks2.enable = true;
    devmon.enable = true;
    printing.enable = true;
    getty.autologinUser = "ms";
    gnome.core-utilities.enable = false;
  };
}
