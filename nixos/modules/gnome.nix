{ pkgs, ... }: {
    environment.gnome.excludePackages = with pkgs.gnome; [
        baobab  # Disk usage analyzer
        cheese  # Camera
        #eog  # Image viewer
        epiphany  # Web browser
        #evince  # Document viewer
        #file-roller  # Archive manager
        geary  # Email client
        #gedit  # Text editor
        seahorse  # Password manager
        simple-scan  # Document viewer
        #totem  # Video player
        yelp  # Help viewer

        gnome-calculator
        gnome-calendar
        gnome-characters
        gnome-clocks
        gnome-contacts
        gnome-disk-utility
        gnome-font-viewer
        gnome-logs
        gnome-maps
        gnome-music
        #gnome-photos
        gnome-screenshot
        gnome-system-monitor
        gnome-weather
        pkgs.gnome-connections
        pkgs.gnome-tour
        #pkgs.gnome-terminal
    ];
}
