{ inputs, ... }: {
	imports = [
		./packages.nix
		./modules
	];

	system.stateVersion = "24.05";
}
