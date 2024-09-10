{ pkgs, ... }: {
	nixpkgs.config = {
		allowUnfree = true;
	};

	# Packages that require root
	environment.systemPackages = with pkgs; [
		# Desktop apps
		gparted
	];

	fonts.packages = with pkgs; [
		jetbrains-mono
		# (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
	];
}
