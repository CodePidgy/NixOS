{ lib, ... }: {
    dconf = with lib.hm.gvariant; {
        enable = true;

        settings = {
            "org/gnome/desktop/interface" = {
                color-scheme = "prefer-dark";
                enable-hot-corners = false;
            };

            "org/gnome/desktop/wm/preferences" = {
                button-layout = "menu:minimize,maximize,close";
                num-workspaces = 2;
                workspace-names = ["1" "2"];
            };

            "org/gnome/desktop/app-folders" = {
                folder-children = [ "System" "Utility" ];
            };

            "org/gnome/desktop/app-folders/folders/System" = {
                name = "System";
                apps = [
                    "org.gnome.FileRoller.desktop"     # Archive Manager
                    "org.gnome.Calculator.desktop"     # Calculator
                    "org.gnome.clocks.desktop"         # Clocks
                    "org.gnome.Console.desktop"        # Terminal
                    "org.gnome.DiskUtility.desktop"    # Disks
                    "org.gnome.Evince.desktop"         # Document Viewer
                    "org.gnome.Extensions.desktop"     # Extensions
                    "org.gnome.Nautilus.desktop"       # Files
                    "org.gnome.Loupe.desktop"          # Image Viewer
                    "nixos-manual.desktop"             # NixOS Manual
                    "org.gnome.Settings.desktop"       # Settings
                    "org.gnome.Software.desktop"       # Software
                    "org.gnome.SystemMonitor.desktop"  # System Monitor
                    "org.gnome.TextEditor.desktop"     # Text Editor
                    "org.gnome.tweaks.desktop"         # Tweaks
                ];
            };

            "org/gnome/desktop/app-folders/folders/Utility" = {
                name = "Utility";
                apps = [
                    "Alacritty.desktop"
                    "btop.desktop"
                    "ca.desrt.dconf-editor.desktop"
                    "dropbox.desktop"
                    "com.mattjakeman.ExtensionManager.desktop"
                    "gparted.desktop"
                ];
            };

            "org/gnome/desktop/interface" = {
                clock-format = "12h";
                clock-show-weekday = true;
                show-battery-percentage = true;
            };

            "org/gnome/nautilus/preferences" = {
                default-folder-viewer = "list-view";
            };

            "org/gnome/mutter" = {
                center-new-windows = true;
            };

            "org/gnome/settings-daemon/plugins/color" = {
                night-light-enabled = true;
                night-light-schedule-automatic = false;
                night-light-schedule-from = 6.0;
                night-light-schedule-to = 18.0;
            };

            "org/gnome/shell" = {
                app-picker-layout = let
                    entry = name: position:
                        (mkDictionaryEntry[
                                name (mkVariant[
                                        (mkDictionaryEntry[
                                                "position" ( mkVariant position )
                                        ])
                                ])
                        ]);
                in
                    [
                        [
                            (entry "System" 0)
                            (entry "Utility" 1)
                            (entry "Alacritty.desktop" 2)
                            (entry "firefox.desktop" 3)
                            (entry "com.axosoft.GitKraken.desktop" 4)
                            (entry "thunderbird.desktop" 5)
                            (entry "code.desktop" 6)
                        ]
                    ];
                disable-user-extensions = false;
                enabled-extensions = [
                    "monitor@astraext.github.io"                            # Astra Monitor
                    "custom-accent-colors@demiskp"                          # Custom Accent Colors
                    "dash-to-panel@jderose9.github.com"                     # Dash to Panel
                    "just-perfection-desktop@just-perfection"               # Just Perfection
                    "drive-menu@gnome-shell-extensions.gcampax.github.com"  # Removable Drive Menu
                    "space-bar@luchrioh"                                    # Space Bar
                    "Vitals@CoreCoding.com"                                 # Vitals
                    "user-theme@gnome-shell-extensions.gcampax.github.com"  # User Themes
                ];
                favorite-apps = [
                    "org.gnome.Nautilus.desktop"
                    "firefox.desktop"
                    "thunderbird.desktop"
                    "code.desktop"
                    "GitKraken Desktop.desktop"
                ];
                remember-mount-password = true;
            };

            "org/gnome/shell/extensions/astra-monitor" = {
                headers-height = 20;
                network-update = 1.0;
                processor-gpu = false;
                processor-update = 1.0;
                storage-header-graph = true;
                storage-update = 1.0;
            };

            "org/gnome/shell/extensions/custom-accent-colors" = {
                accent-color = "red";
                theme-shell = true;
            };

            "org/gnome/shell/extensions/dash-to-panel" = {
                appicon-margin = 4;
                panel-sizes = "{\"0\":32}";
                show-apps-icon-side-padding = 4;
            };

            "org/gnome/shell/extensions/just-perfection" = {
                accessibility-menu = false;
                keyboard-layout = false;
                startup-status = 0;
                window-demands-attention-focus = true;
                workspace = false;
                workspace-peek = false;
                world-clock = false;
            };

            "org/gnome/shell/extensions/user-theme" = {
                name = "Custom-Accent-Colors";
            };

            "org/gtk/gtk4/settings/file-chooser" = {
                show-hidden = true;
                view-type = "list";
            };
        };
    };
}