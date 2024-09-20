{ pkgs, ... }: {
    environment.gnome.excludePackages = with pkgs.gnome; [
        baobab         # Disk Usage Analyzer
        epiphany       # Web Browser
        #evince        # Document Viewer
        #file-roller   # Archive Manager
        geary          # Email Client
        seahorse       # Password Manager
        simple-scan    # Document Viewer
        totem          # Video Player
        yelp           # Help Viewer
        #pkgs.loupe     # Image Viewer
        pkgs.snapshot  # Camera

        #gnome-calculator
        gnome-calendar
        gnome-characters
        #gnome-clocks
        gnome-contacts
        #gnome-disk-utility
        gnome-font-viewer
        gnome-logs
        gnome-maps
        gnome-music
        #gnome-screenshot
        #gnome-system-monitor
        gnome-weather
        pkgs.gnome-connections
        #pkgs.gnome-terminal
        #pkgs.gnome-text-editor
        pkgs.gnome-tour
    ];
}
