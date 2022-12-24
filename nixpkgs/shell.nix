
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
           export PATH=~/.grader/bin:$PATH
           export NODE_PATH=~/.npm-packages/lib/node_modules
           source ~/.config/z/z.sh
         '';
         shellAliases = {
           update = "sudo nix flake update ~/.config/nixos";
           build = "sudo nixos-rebuild switch -p nix --flake ~/.config/nixos/#beast";
           clean = "sudo nix-collect-garbage -d";
           ls = "lsd";
           lsa = "lsd -a";
           ll = "lsd -l";
           c = "clear";
           v = "nvim";
           t = "tmux";
         };
         history = {
           size = 10000;
           path = "${config.xdg.dataHome}/zsh/history";
         };
    };
}
