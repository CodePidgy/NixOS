{ pkgs, ... }: {
	# Packages that require root
	environment.systemPackages = with pkgs; [
		# Desktop
		discord
		transmission_4-gtk
		vlc

		# Coding
		dotnetCorePackages.dotnet_8.sdk
		nodejs
		openssl
	];
}
