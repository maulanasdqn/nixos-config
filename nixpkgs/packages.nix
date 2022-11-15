{ config, pkgs, ... }:
{
    home.packages = with pkgs; [
    google-chrome flameshot zig
    fd tmux jq git-crypt nitrogen
    postman neofetch lazygit rofi
    slack alsa-utils python3
    nodejs neovim ripgrep
    nodePackages.yarn picom-next
    nodePackages.typescript
    nodePackages.typescript-language-server
    nodePackages.live-server
    nodePackages.prettier
  ];
}
