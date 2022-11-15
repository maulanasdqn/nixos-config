{ config, pkgs, ... }:
{
  imports = [
    ./packages.nix
    ./shell.nix
    ./git.nix
    ./terminal.nix
  ];

   home.username = "ms";
   home.homeDirectory = "/home/ms";
   home.stateVersion = "21.11";
   programs.home-manager.enable = true;
   programs.direnv.enable = true;
   programs.direnv.nix-direnv.enable = true;
   programs.vscode.enable = true;
}
