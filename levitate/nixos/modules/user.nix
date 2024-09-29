{ pkgs, ... }: {
	programs.zsh.enable = true;

	users = {
		users.aidan = {
			isNormalUser = true;
			description = "Aidan Venter";
			extraGroups = [ "networkmanager" "wheel" ];

			shell = pkgs.zsh;
		};
	};
}
