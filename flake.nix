{
	description = "NixOS Configuration";

  	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";

		home-manager = {
			url = "github:nix-community/home-manager/release-24.05";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};

	outputs = inputs @ { self, nixpkgs, home-manager, ...  }: {
		nixosConfigurations = {
			virtuos = nixpkgs.lib.nixosSystem {
				system = "x86_64-linux";

				modules = [
					./virtuos/nixos/configuration.nix

					home-manager.nixosModules.home-manager {
					 	home-manager.useGlobalPkgs = true;
					 	home-manager.useUserPackages = true;

					 	home-manager.users.aidan = import ./home/home.nix;
					}
				];
			};
		};
	};
}
