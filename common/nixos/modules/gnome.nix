{ pkgs, ... }: {
    environment.gnome.excludePackages = with pkgs; [
        baobab         # Disk Usage Analyzer
        epiphany       # Web Browser
        #evince        # Document Viewer
        #file-roller   # Archive Manager
        geary          # Email Client
        seahorse       # Password Manager
        simple-scan    # Document Viewer
        totem          # Video Player
        yelp           # Help Viewer
        #loupe          # Image Viewer
        snapshot       # Camera

        #gnome-calculator
        gnome-calendar
        gnome-characters
        #gnome-clocks
        gnome-console
        gnome-contacts
        #gnome-disk-utility
        gnome-font-viewer
        gnome-logs
        gnome-maps
        gnome-music
        #gnome-screenshot
        #gnome-system-monitor
        gnome-terminal
        gnome-weather
        gnome-connections
        #gnome-text-editor
        gnome-tour
    ];
}
