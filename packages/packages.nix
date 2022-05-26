{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
     vim
     wget
     curl
     git
     virt-manager
     tdesktop
     ripgrep
     usbutils
     killall
     unzip
     zip
     unrar

     # WM Dependencies
     dmenu
     alacritty
     nitrogen
     pcmanfm
     flameshot
     networkmanager
  ];
}
