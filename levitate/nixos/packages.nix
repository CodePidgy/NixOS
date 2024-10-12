{ pkgs, ... }: {
	# Packages that require root
	environment.systemPackages = with pkgs; [
		# Desktop
		discord

		# Coding
		nodejs
		openssl
	];
}
