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
