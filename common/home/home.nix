{
	imports = [
		./packages.nix
		./modules
	];

	home = {
		username = "aidan";
		homeDirectory = "/home/aidan";

		sessionPath = [ "/home/aidan/.local/bin" ];

		stateVersion = "24.05";
	};

	programs.home-manager = {
		enable = true;
	};
}
