{ inputs, ... }: {
	imports = [
		./hardware-configuration.nix
		./packages.nix
		./modules
		../../common/nixos
	];

	system.stateVersion = "24.05";
}
