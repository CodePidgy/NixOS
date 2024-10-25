{ lib, ... }: {
    dconf = with lib.hm.gvariant; {
        enable = true;

        settings = {
            "org/gnome/desktop/app-folders" = {
                folder-children = [ "System" "Utility" ];
            };

            "org/gnome/desktop/app-folders/folders/System" = {
                name = "System";
                apps = [
                    "org.gnome.Calculator.desktop"     # Calculator
                    "org.gnome.clocks.desktop"         # Clocks
                    "org.gnome.DiskUtility.desktop"    # Disks
                    "org.gnome.Evince.desktop"         # Document Viewer
                    "org.gnome.Extensions.desktop"     # Extensions
                    "org.gnome.FileRoller.desktop"     # File Roller
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
                    "Alacritty.desktop"                         # Alacritty
                    "btop.desktop"                              # btop++
                    "ca.desrt.dconf-editor.desktop"             # dconf Editor
                    "com.dropbox.Client.desktop"                # Dropbox
                    "com.mattjakeman.ExtensionManager.desktop"  # Extension Manager
                    "gparted.desktop"                           # GParted
                ];
            };

            "org/gnome/desktop/background" = {
                picture-uri = "file:///run/current-system/sw/share/backgrounds/gnome/blobs-l.svg";
                picture-uri-dark = "file:///run/current-system/sw/share/backgrounds/gnome/blobs-d.svg";
            };

            "org/gnome/desktop/input-sources" = {
                sources = [ (mkTuple [ "xkb" "us" ]) ];
            };

            "org/gnome/desktop/interface" = {
                color-scheme = "prefer-dark";
                enable-hot-corners = false;
            };

            "org/gnome/desktop/interface" = {
                clock-format = "12h";
                clock-show-weekday = true;
                show-battery-percentage = true;
            };

            "org/gnome/desktop/screensaver" = {
                picture-uri = "file:///run/current-system/sw/share/backgrounds/gnome/blobs-l.svg";
            };

            "org/gnome/desktop/session" = {
                idle-delay = mkUint32 900;
            };

            "org/gnome/desktop/wm/keybindings" = {
                switch-applications = [];
                switch-applications-backward = [];
                switch-windows = [ "<Alt>Tab" ];
                switch-windows-backward = [ "<Shift><Alt>Tab" ];
            };

            "org/gnome/desktop/wm/preferences" = {
                button-layout = "menu:minimize,maximize,close";
                num-workspaces = 1;
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
                night-light-schedule-from = 18.0;
                night-light-schedule-to = 6.0;
            };

            "org/gnome/settings-daemon/plugins/media-keys" = {
                custom-keybindings = [
                    "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/"
                ];
            };

            "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
                binding = "<Primary><Alt>t";
                command = "alacritty";
                name = "Open Terminal";
            };

            "org/gnome/settings-daemon/plugins/power" = {
                power-button-action = "interactive";
                sleep-inactive-ac-timeout = mkUint32 3600;
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
                            (entry "Alacritty.desktop" 2)              # Alacritty
                            (entry "cutecom.desktop" 3)                # CuteCom
                            (entry "discord.desktop" 4)                # Discord
                            (entry "com.dropbox.Client.desktop" 5)     # Dropbox
                            (entry "firefox.desktop" 6)                # Firefox
                            (entry "com.axosoft.GitKraken.desktop" 7)  # GitKraken
                            (entry "mqtt-explorer.desktop" 8)          # MQTT Explorer
                            (entry "virtualbox.desktop" 9)             # Oracle VM VirtualBox
                            (entry "postman.desktop" 10)               # Postman
                            (entry "thunderbird.desktop" 11)           # Thunderbird
                            (entry "transmission-gtk.desktop" 12)      # Transmission
                            (entry "code.desktop" 14)                  # Visual Studio Code
                            (entry "vlc.desktop" 15)                   # VLC
                        ]
                    ];
                disable-user-extensions = false;
                enabled-extensions = [
                    "appindicatorsupport@rgcjonas.gmail.com"                # AppIndicator Support
                    "monitor@astraext.github.io"                            # Astra Monitor
                    "custom-accent-colors@demiskp"                          # Custom Accent Colors
                    "dash-to-panel@jderose9.github.com"                     # Dash to Panel
                    "just-perfection-desktop@just-perfection"               # Just Perfection
                    "drive-menu@gnome-shell-extensions.gcampax.github.com"  # Removable Drive Menu
                    "Vitals@CoreCoding.com"                                 # Vitals
                    "user-theme@gnome-shell-extensions.gcampax.github.com"  # User Themes
                ];
                favorite-apps = [
                    "org.gnome.Nautilus.desktop"     # Files
                    "firefox.desktop"                # Firefox
                    "discord.desktop"                # Discord
                    "thunderbird.desktop"            # Thunderbird
                    "code.desktop"                   # Visual Studio Code
                    "com.axosoft.GitKraken.desktop"  # GitKraken
                ];
                remember-mount-password = true;
            };

            "org/gnome/shell/extensions/astra-monitor" = {
                headers-height = 26;
                memory-update = 1.0;
                network-update = 1.0;
                panel-box = "left";
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
                animate-appicon-hover = true;
                appicon-margin = 4;
                leftbox-padding = 0;
                panel-element-positions = ''
                    {
                        "0": [
                            { "element": "leftBox", "visible": true, "position": "stackedTL" },
                            { "element": "showAppsButton", "visible": true, "position": "stackedBR" },
                            { "element": "activitiesButton", "visible": false, "position": "stackedTL" },
                            { "element": "taskbar", "visible": true, "position": "centerMonitor" },
                            { "element": "centerBox", "visible": true, "position": "stackedBR" },
                            { "element": "rightBox", "visible": true, "position": "stackedBR" },
                            { "element": "dateMenu", "visible": true, "position": "stackedBR" },
                            { "element": "systemMenu", "visible": true, "position": "stackedBR" },
                            { "element": "desktopButton", "false": true, "position": "stackedBR" }
                        ],
                        "1": [
                            { "element": "leftBox", "visible": true, "position": "stackedTL" },
                            { "element": "showAppsButton", "visible": true, "position": "stackedBR" },
                            { "element": "activitiesButton", "visible": false, "position": "stackedTL" },
                            { "element": "taskbar", "visible": true, "position": "centerMonitor" },
                            { "element": "centerBox", "visible": true, "position": "stackedBR" },
                            { "element": "rightBox", "visible": true, "position": "stackedBR" },
                            { "element": "dateMenu", "visible": true, "position": "stackedBR" },
                            { "element": "systemMenu", "visible": true, "position": "stackedBR" },
                            { "element": "desktopButton", "false": true, "position": "stackedBR" }
                        ]
                    }
                '';
                show-apps-icon-side-padding = 4;
                trans-dynamic-anim-target = 0.60;
                trans-dynamic-behavior = "MAXIMIZED_WINDOWS";
                trans-panel-opacity = 0.0;
                trans-use-custom-opacity = true;
                trans-use-dynamic-opacity = true;
                tray-padding = 4;
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
