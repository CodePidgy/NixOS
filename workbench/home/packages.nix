{ pkgs, ... }: {
    # Packages that don't require root
	home.packages = with pkgs; [
		# GNOME apps
		dconf-editor
		gnome-extension-manager
		gnome-tweaks

		# GNOME extensions
		gnomeExtensions.astra-monitor
		gnomeExtensions.custom-accent-colors
		gnomeExtensions.dash-to-panel
		gnomeExtensions.just-perfection
		gnomeExtensions.space-bar

        # Desktop apps
        firefox
        vscode

		# CLI utils
		btop
		eza
		fzf
		git
		neofetch
		unzip
		zip

		# Coding
		python3
	];
}
