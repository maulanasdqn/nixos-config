
{ config, pkgs, ... }:
{
  services.xserver = {
    enable = true;
    displayManager.gdm.enable = true;
    #windowManager.dwm.enable = true;
    desktopManager.gnome.enable = true;
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
