{ inputs, ... }: {
	imports = [
		./hardware-configuration.nix
		./packages.nix
		./modules
	];

	system.stateVersion = "24.05";
}
