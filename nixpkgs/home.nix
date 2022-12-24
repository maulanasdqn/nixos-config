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
   programs.tmux = {
	  enable = true;
	  clock24 = true;
	  plugins = with pkgs.tmuxPlugins; [
		  sensible
		  yank
		{
			plugin = dracula;
			extraConfig = ''
				set -g @dracula-show-battery true
				set -g @dracula-show-powerline true
				set -g @dracula-refresh-rate 10
			'';
		}
	];
	extraConfig = ''
		set -g mouse on
	'';
  };
}
