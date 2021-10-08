{ config, pkgs, lib, ... }:

{
  programs.home-manager.enable = true;

  imports = [ ./packages/main.nix ./configs/main.nix ];

  home = {
  	username = "nixon";
  	homeDirectory = "/home/nixon";
	stateVersion = "21.05";
	};


  nixpkgs = {
 	 overlays = [ (import ./overlays/main.nix) ];
  };
}
