{ pkgs, ... }: {
	# Packages that require root
	environment.systemPackages = with pkgs; [
		# Desktop
		discord

		# Coding
		dotnetCorePackages.dotnet_8.sdk
		nodejs
		openssl
	];
}
