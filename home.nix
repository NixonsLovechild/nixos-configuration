{ config, pkgs, lib, ... }:

{
  programs.home-manager.enable = true;
  home.username = "nixon";
  home.homeDirectory = "/home/nixon";
  imports = [ ./packages/main.nix ./configs/main.nix];
  nixpkgs.overlays = [ (import ./overlays/main.nix) ];

  home.stateVersion = "21.05";
}
