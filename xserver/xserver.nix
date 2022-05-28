
{ config, pkgs, ... }:
{
  services.xserver = {
    enable = true;
    displayManager.startx.enable = true;
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
