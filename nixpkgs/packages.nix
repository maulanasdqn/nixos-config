{ config, pkgs, ... }:
{
    home.packages = with pkgs; [
    google-chrome flameshot zig
    fd tmux jq git-crypt nitrogen
    postman neofetch lazygit rofi
    slack alsa-utils python3 scrcpy
    nodejs neovim ripgrep android-tools
    nodePackages.yarn picom-next
    nodePackages.typescript spotify
    nodePackages.typescript-language-server
    nodePackages.live-server lsd
    nodePackages.prettier htop
  ];
}
