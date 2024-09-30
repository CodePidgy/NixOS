{ inputs, ... }: {
	imports = [
		./hardware-configuration.nix
		./packages.nix
		./modules
		../../common/nixos
	];

	nix.settings.experimental-features = [ "nix-command" "flakes"  ];

	system.stateVersion = "24.05";
}
