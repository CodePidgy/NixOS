{ pkgs, ... }: {
	nixpkgs.config = {
		allowUnfree = true;
	};

	# Packages that require root
	environment.systemPackages = with pkgs; [
		# Desktop apps
		gparted

		# CLI tools
		bash

		# Sound
		pamixer
		pipewire
		pulseaudio
	];

	fonts.packages = with pkgs; [
		jetbrains-mono
		# (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
	];
}
