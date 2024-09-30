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

		# Services
		maestral-gui

		# CLI
		btop
		dconf2nix
		eza
		fzf
		git
		neofetch
		pipx
		python3
		python312Packages.pip
		unzip
		zip
	];
}
