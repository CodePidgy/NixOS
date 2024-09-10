{ pkgs, ... }: {
    # Packages that don't require root
	home.packages = with pkgs; [
        # Desktop apps
        gitkraken
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

		# Sound
		pamixer
		pipewire
		pulseaudio

		# Coding
		python3
	];
}
