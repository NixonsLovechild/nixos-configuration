{ pkgs, ...}: {
 # .zshenv
	programs.zsh = {
	  enable = true;
  	shellAliases = {
    		ll = "ls -l";
    		update = "sudo nixos-rebuild switch";
    		nixconfig = "sudo nvim /etc/nixos/configuration.nix";
		homeconfig = "cd ~/.config/nixpkgs";
  	};

  	history = {
    		size = 10000;
  	};

	oh-my-zsh = { 
		enable = true;
		plugins = [ "git" "thefuck" ];
		theme = "duellj";
	};
};
}
