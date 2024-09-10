{
	services = {
		displayManager.sddm.enable = true;
		desktopManager.plasma6.enable = true;
	};

	services.xserver = {
		enable = true;

		xkb.layout = "us";
		xkb.variant = "";

		# displayManager.sddm.enable = true;
		# desktopManager.plasma6.enable = true;

		# libinput = {
		# 	enable = true;

		# 	mouse.accelProfile = "flat";
		# 	touchpad.accelProfile = "falt";
		# };
	};
}
