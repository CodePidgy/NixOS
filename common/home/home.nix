{
	imports = [
		./packages.nix
		./modules
	];

	home = {
		username = "aidan";
		homeDirectory = "/home/aidan";
		stateVersion = "24.05";
	};

	programs.home-manager = {
		enable = true;
	};
}
