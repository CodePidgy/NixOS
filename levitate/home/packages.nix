{ pkgs, ... }: {
    # Packages that don't require root
	home.packages = with pkgs; [
		# GNOME apps
		gnome-extension-manager

		# Desktop apps
		postman
	];
}
