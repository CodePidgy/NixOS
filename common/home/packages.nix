{ pkgs, ... }: {
    # Packages that don't require root
	home.packages = with pkgs; [
		# GNOME apps
		dconf-editor
		gnome-tweaks

		# GNOME extensions
		gnomeExtensions.appindicator
		gnomeExtensions.astra-monitor
		gnomeExtensions.custom-accent-colors
		gnomeExtensions.dash-to-panel
		gnomeExtensions.just-perfection

        # Desktop apps
        firefox
        vscode

		# CLI
		btop
		dconf2nix
		eza
		fzf
		git
		neofetch
		unzip
		zip

		# Coding
		pipx
		python3
	];
}
