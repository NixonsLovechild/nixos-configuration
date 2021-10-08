{ pkgs, ... }:

with pkgs;
let
  default-python = python3.withPackages (python-packages:
    with python-packages; [
      pip
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

   # X11/I3 ENVIRONMENT
   rofi
   dunst
   arandr
   pango
   nitrogen



   # MISC
    haskellPackages.network-manager-tui
    bitwarden
    nerdfonts
    ripgrep

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
    tree
    aria2
    imagemagick

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

    #webdev
    firefox-devedition-bin
    epiphany
    google-chrome

    # ESSENTIAL
    pavucontrol
    discord
    element-desktop
    vlc
    spotify
    blueman
    obs-studio
    pcmanfm

    # THIS SOUNDS COOL
    cachix
    appimagekit
    appimage-run
 
  ];

}

