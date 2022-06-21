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
     gnomeExtensions.gsconnect
  ];
  programs.browserpass.enable = true;
}
