{ pkgs, ... }: {
	services = {
		#displayManager.sddm.enable = true;
		#desktopManager.plasma6.enable = true;

		udev.packages = with pkgs; [
			gnome.gnome-settings-daemon
		];
	};

	services.xserver = {
		enable = true;

		displayManager.gdm.enable = true;
		desktopManager.gnome.enable = true;

		xkb.layout = "us";
		xkb.variant = "";

		# libinput = {
		# 	enable = true;

		# 	mouse.accelProfile = "flat";
		# 	touchpad.accelProfile = "falt";
		# };
	};
}
