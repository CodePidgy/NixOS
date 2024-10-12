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
	];

	fonts.packages = with pkgs; [
		jetbrains-mono
	];
}
