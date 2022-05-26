
{ config, pkgs, ... }:
{
  services.xserver = {
    enable = true;
    displayManager.lightdm.enable = true;
    windowManager.dwm.enable = true;
    layout = "us";
    xkbOptions = "eurosign:e";
    libinput = { 
      enable = true;
      touchpad = {
        naturalScrolling = true;
      };
    };
  };
}
