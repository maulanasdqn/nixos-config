{ config, pkgs, ... }:
{
  imports = [
    ./packages.nix
    ./shell.nix
    ./terminal.nix
    ./git.nix
  ];

   home.username = "ms";
   home.homeDirectory = "/home/ms";
   home.stateVersion = "21.11";
   programs.home-manager.enable = true;
   programs.vscode = {
      enable = true;
   };
}
