
{ config, pkgs, ... }:
{
  programs.zsh = {
     enable = true;
     enableCompletion = true;
     autosuggestions.enable = true;
     syntaxHighlighting.enable = true;
     ohMyZsh = {
       enable = true;
       plugins = [ "git" ];
       theme = "awesomepanda";
     };
     shellAliases = {
       ll = "ls -l";
       c = "clear";
       update = "sudo nixos-rebuild switch";
     };
   };
  users.defaultUserShell = pkgs.zsh;
}
