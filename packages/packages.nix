{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
     wget curl git
     virt-manager tdesktop
     ripgrep usbutils
     killall unzip zip
     unrar gnome.nautilus
     lua
  ];
}
