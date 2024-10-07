{ pkgs, ... }: {
	users = {
		users.aidan = {
			isNormalUser = true;
			description = "Aidan Venter";
			extraGroups = [ "dialout" "networkmanager" "wheel" "vboxusers" ];

			shell = pkgs.zsh;
		};
	};
}
