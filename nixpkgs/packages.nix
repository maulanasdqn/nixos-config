{ config, pkgs, ... }:
{
    home.packages = with pkgs; [
    # Rust CLI Tools! I love rust.
    exa
    bat
    tokei
    xsv
    fd

    #Office
    libreoffice

    # Development
    neovim
    tmux
    jq
    git-crypt
    dnsutils
    whois
    postman

    # Files
    zstd
    restic
    brig
    ipfs

    # Media
    youtube-dl
    imagemagick
    pavucontrol
    qjackctl
    obs-studio

    # Overview
    htop
    wtf
    lazygit
    neofetch

    # Jokes
    fortune
    figlet
    lolcat
    lsd
    sl
  ];
}
