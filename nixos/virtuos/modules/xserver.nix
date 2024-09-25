{ pkgs, ... }: {
	services = {
		udev.packages = with pkgs; [
			gnome-settings-daemon
		];
	};

	services.xserver = {
		enable = true;

		displayManager.gdm.enable = true;
		desktopManager.gnome.enable = true;

		xkb = {
			layout = "us";
			variant = "";
		};

		excludePackages = with pkgs; [
			xterm
		];
	};
}
