{ pkgs, ... }:

with pkgs;
let
  default-python = python3.withPackages (python-packages:
    with python-packages; [
      pip
      thefuck
      black
      flake8
      setuptools
      wheel
      twine
      flake8
      virtualenv
    ]);

in {
  home.packages = with pkgs; [
   # MISC
    arandr
    haskellPackages.network-manager-tui
    bitwarden
    firefox-devedition-bin

    # TERMINAL
    zsh
    oh-my-zsh
    any-nix-shell
    gotop
    htop
    neofetch
    neovim
    shutter
    ranger
    zip
    unrar
    unzip
    escrotum
    tree
    aria2
    imagemagick
    feh

    # DEVELOPMENT
    # BREATHE DEEPLY BEFORE TACKLING JAVASCRIPT SON
    nixfmt
    neovim
    default-python
    conda
    gcc
    gnumake
    binutils
    rustup

    # ESSENTIAL
    pavucontrol
    discord
    element-desktop
    vlc
    spotify
    blueman
    obs-studio

    # THIS SOUNDS COOL
    cachix
    appimagekit
    appimage-run
 
  ];

}

