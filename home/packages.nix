{ pkgs, ... }: {
    # Packages that don't require root
	home.packages = with pkgs; [
		# GNOME apps
		gnome.dconf-editor
		gnome-extension-manager
		gnome.gnome-tweaks

		# GNOME extensions
		gnomeExtensions.astra-monitor
		gnomeExtensions.dash-to-panel
		#gnomeExtensions.forge
		#gnomeExtensions.hide-activities-button
		gnomeExtensions.just-perfection
		gnomeExtensions.space-bar
		#gnomeExtensions.vitals

        # Desktop apps
        gitkraken
        firefox
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

		# Sound
		pamixer
		pipewire
		pulseaudio

		# Coding
		python3
	];
}
