{ config, pkgs, ... }:
{
    home.packages = with pkgs; [
    # Rust CLI Tools! I love rust.
    exa
    bat
    tokei
    xsv
    fd

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
