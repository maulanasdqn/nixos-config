
{ config, pkgs, ... }:
{
  services.xserver = {
    enable = true;
    displayManager.startx.enable = true;
    windowManager.dwm.enable = true;
    layout = "us";
    xkbOptions = "caps:swapescape";
    libinput = { 
      enable = true;
      touchpad = {
        naturalScrolling = true;
      };
    };
  };
}
