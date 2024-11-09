{ pkgs, ... }: {
	services.flatpak.enable = true;

	systemd.services.rmbak = {
		script = ''
			if [ -f /home/aidan/.config/gtk-4.0/gtk.css.bak ]; then
				rm /home/aidan/.config/gtk-4.0/gtk.css.bak;
			fi
		'';
		wantedBy = [ "multi-user.target" ];
	};
}
