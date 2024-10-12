{ pkgs, ... }: {
    # Packages that don't require root
	home.packages = with pkgs; [
		# GNOME
		gnome-extension-manager

        # Desktop
		cutecom
		mqtt-explorer
		postman
	];
}
