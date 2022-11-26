# Beast Nix Config

{ config, pkgs, ... }:

{
  imports = [ 
  ./hardware/hardware.nix
  ./boot/boot.nix
  ./services/services.nix
  ./users/users.nix
  ./packages/packages.nix
  ./audio/audio.nix
  ./environtment/environtment.nix
  ./network/network.nix
  ./shell/shell.nix
  ./virtualisation/virtualisation.nix
  ./xserver/xserver.nix
  ];

  # Enable Nix Overlay
  nixpkgs = {
    config = {
      allowUnfree = true;
    };
    overlays = [
      (final: prev: {
        dwm = prev.dwm.overrideAttrs (old: { src = ./dwm;});
        slstatus = prev.slstatus.overrideAttrs (old: { src = ./slstatus;});
      })
    ];
  };

  # Enable Light
  programs.light.enable = true;
  services.actkbd = {
    enable = true;
    bindings = [
      { keys = [ 225 ]; events = [ "key" ]; command = "/run/current-system/sw/bin/light -A 10"; }
      { keys = [ 224 ]; events = [ "key" ]; command = "/run/current-system/sw/bin/light -U 10"; }
    ];
  };

  # Enable Auto Upgrades
  system = {
    autoUpgrade = {
      allowReboot = true;
    };
    autoUpgrade = {
      enable = true;
    };
    stateVersion = "21.11";
  };

  # Set your time zone.
  time.timeZone = "Asia/Jakarta";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  # Set Fonts on Terminal
  console = {
     font = "FiraCode Nerd Font Mono";
     keyMap = "us";
  };

  # Enable Flakes and Binary Cache
  nix = {
    package = pkgs.nixFlakes;
    settings = {
      substituters = [
        "https://nix-community.cachix.org"
        "https://cache.nixos.org/"
        "https://cache.komunix.org/"
      ];
    };
    extraOptions = ''
      experimental-features = nix-command flakes
    '';
  };

  # Set Sudo with No Pass
  security.sudo.wheelNeedsPassword = false;
  
  programs = {
    mtr = {
      enable = true;
    };
    gnupg.agent = {
       enable = true;
       enableSSHSupport = true;
    };
  };
}

