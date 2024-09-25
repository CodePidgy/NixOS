{ pkgs, ... }: {
    # Packages that don't require root
	home.packages = with pkgs; [
		# GNOME apps
		dconf-editor
		gnome-extension-manager
		gnome-tweaks

		# GNOME extensions
		gnomeExtensions.astra-monitor
		gnomeExtensions.dash-to-panel
		gnomeExtensions.just-perfection
		gnomeExtensions.space-bar

        # Desktop apps
        firefox
        gitkraken
        vscode

		# CLI utils
		btop
		dconf2nix
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
