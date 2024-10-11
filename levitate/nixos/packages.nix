{ pkgs, ... }: {
	# Packages that require root
	environment.systemPackages = with pkgs; [
		# Desktop apps
		discord

		# Coding
		nodejs
	];
}
