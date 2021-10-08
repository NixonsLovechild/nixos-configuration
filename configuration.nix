{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Use the systemd-boot EFI boot loader.
  # boot.loader.systemd-boot.enable = true;
  boot.loader = { 
	efi.canTouchEfiVariables = true;
  	grub = { 
		enable = true;
  		devices = ["nodev"];
  		efiSupport = true;
 		useOSProber = true;
	};
};

   time.timeZone = "Europe/Dublin";
   networking = {
 	useDHCP = false;
	hostName = "nixos";
  	interfaces = {
		enp38s0.useDHCP = true;
		wlo1.useDHCP = true;
 	};
 	networkmanager = {
 		enable = true;
 	};
  };

  # LANGUAGE 
   i18n.defaultLocale = "en_US.UTF-8";
   console = {
    font = "Lat2-Terminus16";
    keyMap = "us";
   };

  services.gvfs.enable = true;
  # XSERVER
  services.xserver = {
  #.libinput.enable = true; # LAPTOP SERVICE
   enable = true;
   desktopManager = {
        xterm.enable = false;
	};
   layout = "us";
   windowManager.i3 = {
			package = pkgs.i3-gaps;
      			enable = true;
      			extraPackages = with pkgs; [
        			dmenu 
        			i3status
        			i3lock 
        			i3blocks
     ];
  };
};

  # PRINTER SERVICE
  # services.printing.enable = true;

  # SOUND 
   sound = {
	enable = true;
	};
   hardware.pulseaudio.enable = true;

   users = {
	defaultUserShell = pkgs.zsh;
	users = {
		nixon = {
 		    	isNormalUser = true;
     			extraGroups = [ 
			"wheel"
			"networkmanager"
			"audio" 
			]; 
		};
   	};
};

   environment = { 
   	variables = { 
		EDITOR = "nvim";
	};
	pathsToLink = ["/libexec"];
	systemPackages = with pkgs; [
	    		# (pkgs.writeShellScriptBin "nixFlakes" ''
      			#		exec ${pkgs.nixUnstable}/bin/nix --experimental-features "nix-command flakes" "$@"
    			#	'')
			psutils
			usbutils
			pciutils
			playerctl
			gvfs
     			vim 
			pavucontrol
			gitAndTools.gitFull
     			wget
     			firefox
     			alacritty
			arandr
   	];
};

	nix = { 
	#	package = pkgs.nixUnstable;
	#	extraOptions = ''
	#			experimental-features = nix-command flakes
	#	 '';
		allowedUsers = [ "@wheel" "nixon" ];
		trustedUsers = [ "nixon" ];
	};

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
   programs= {
	mtr.enable = true;
	zsh.enable = true;
   	gnupg.agent = {
     		enable = true;
     		enableSSHSupport = true;
   	};
};

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "21.05"; # Did you read the comment?

}

