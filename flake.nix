{
	description = "NixOS Configuration";

  	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};

	outputs = inputs @ { self, nixpkgs, home-manager, ...  }: {
		nixosConfigurations = {
			levitate = nixpkgs.lib.nixosSystem {
				system = "x86_64-linux";

				modules = [
					./levitate/nixos/configuration.nix

					home-manager.nixosModules.home-manager {
						home-manager.useGlobalPkgs = true;
						home-manager.useUserPackages = true;

						home-manager.users.aidan = import ./levitate/home/home.nix;
					}
				];
			};

			virtuos = nixpkgs.lib.nixosSystem {
				system = "x86_64-linux";

				modules = [
					./virtuos/nixos/configuration.nix

					home-manager.nixosModules.home-manager {
					 	home-manager.useGlobalPkgs = true;
					 	home-manager.useUserPackages = true;

					 	home-manager.users.aidan = import ./virtuos/home/home.nix;
					}
				];
			};

			workbench = nixpkgs.lib.nixosSystem {
				system = "x86_64-linux";

				modules = [
					./workbench/nixos/configuration.nix

					home-manager.nixosModules.home-manager {
						home-manager.backupFileExtension = "bak";
						home-manager.useGlobalPkgs = true;
						home-manager.useUserPackages = true;

						home-manager.users.aidan = import ./workbench/home/home.nix;
					}
				];
			};
		};
	};
}
