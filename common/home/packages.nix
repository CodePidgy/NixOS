{ pkgs, ... }: {
    # Packages that don't require root
	home.packages = with pkgs; [
		# GNOME
		dconf-editor
		gnome-tweaks

		# Extensions
		gnomeExtensions.appindicator
		gnomeExtensions.astra-monitor
		gnomeExtensions.custom-accent-colors
		gnomeExtensions.dash-to-panel
		gnomeExtensions.just-perfection

        # Desktop
        firefox
        vscode

		# Coding
		pipx
		python3
	];
}
