{ inputs, ... }: {
	imports = [
		../../common/nixos/configuration.nix
		./hardware-configuration.nix
		./packages.nix
		./modules
	];
}
