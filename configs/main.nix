
# TO DO LIST
# ./alacritty.nix -- Partial config finished 
# ./i3.nix
# ./rofi.nix
# ./neovim.nix
# ./spicetify-cli.nix
# ./shutter.nix
 
{ config, pkgs, lib, ... }:
{
  imports = [
 ./zsh.nix
 ./alacritty.nix
];

 programs = {
	home-manager.enable = true;
	command-not-found.enable = true;
	git = {
		enable = true;
		userName = "nixonslovechild";
		userEmail = "wzachm1" + "@" + "gmail.com";
	}; 
};
}
