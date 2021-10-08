{ pkgs, ...}: {
 # .zshenv
	programs.zsh = {
	initExtra = ''
    	any-nix-shell zsh --info-right | source /dev/stdin
  	'';
	  enable = true;
  	shellAliases = {
    		ll = "ls -l";
    		update = "sudo nixos-rebuild switch";
    		nixconfig = "sudo nvim /etc/nixos/configuration.nix";
		homeconfig = "cd ~/.config/nixpkgs";
		vim = "nvim";
  	};

  	history = {
    		size = 10000;
  	};

	oh-my-zsh = { 
		enable = true;
		plugins = [ "git" ];
		theme = "duellj";
	};
};
}
