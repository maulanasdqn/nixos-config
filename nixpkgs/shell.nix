
{ config, ... }:
{
    programs.zsh = {
         enable = true;
         enableCompletion = true;
         enableAutosuggestions = true;
         enableSyntaxHighlighting = true;
         oh-my-zsh = {
           enable = true;
           plugins = [ "git" ];
           theme = "awesomepanda";
         };
         initExtra = ''
           export PATH=~/.npm-packages/bin:$PATH
           export NODE_PATH=~/.npm-packages/lib/node_modules
         '';
         shellAliases = {
           ll = "ls -l";
           c = "clear";
           update = "sudo nixos-rebuild switch";
           build = "sudo nixos-rebuild switch -p nix --flake ~/.config/nixos/#beast";
           clean = "sudo nix-collect-garbage -d";
           vim = "nvim";
           v = "nvim";
           gch = "git checkout";
           gc = "git commit";
           ga = "git add";
         };
         history = {
           size = 10000;
           path = "${config.xdg.dataHome}/zsh/history";
         };
    };
}
