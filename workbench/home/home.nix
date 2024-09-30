{
	imports = [
		./packages.nix
		./modules
		../../common/home
	];

	home = {
		username = "aidan";
		homeDirectory = "/home/aidan";
		stateVersion = "24.05";
	};

	programs.home-manager.enable = true;
}
