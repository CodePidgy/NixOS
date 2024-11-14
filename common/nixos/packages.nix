{ pkgs, ... }: {
	nixpkgs.config = {
		allowUnfree = true;
	};

	# Packages that require root
	environment.systemPackages = with pkgs; [
		# Desktop
		gparted

		# Sound
		pamixer
		pipewire
		pulseaudio

		# CLI
		btop
		dconf2nix
		eza
		fzf
		git
		neofetch
		unzip
		zip
	];

	fonts.packages = with pkgs; [
		jetbrains-mono
	];
}
