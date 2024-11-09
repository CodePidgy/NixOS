{ pkgs, ... }: {
    # Packages that don't require root
	home.packages = with pkgs; [
		# GNOME
		gnome-extension-manager

		# Desktop
		discord
		postman
		transmission_4-gtk
		vlc

		# Coding
		dotnetCorePackages.dotnet_8.sdk
		nodejs
		openssl
	];
}
