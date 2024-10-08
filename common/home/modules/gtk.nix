{ pkgs, ... }: {
    gtk = with pkgs; {
        enable = true;

        theme = {
            name = "Yaru";
            package = yaru-theme;
        };

        cursorTheme = {
            name = "Yaru";
            package = yaru-theme;
        };

        iconTheme = {
            name = "Yaru";
            package = yaru-theme;
        };

        gtk3.extraConfig.gtk-application-prefer-dark-theme = 1;

        gtk4.extraConfig.gtk-application-prefer-dark-theme = 1;
    };
}
