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

		# GNOME
		gnome.adwaita-icon-theme
		gnomeExtensions.appindicator
	];

	fonts.packages = with pkgs; [
		jetbrains-mono
		# (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
	];
}
