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
                num-workspaces = 1;
                workspace-names = ["1"];
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
                    "com.mattjakeman.ExtensionManager.desktop"
                    "gparted.desktop"
                    "maestral.desktop"
                ];
            };

            "org/gnome/desktop/input-sources" = {
                sources = [ (mkTuple [ "xkb" "us" ]) ];
            };

            "org/gnome/desktop/interface" = {
                clock-format = "12h";
                clock-show-weekday = true;
                show-battery-percentage = true;
            };

            "org/gnome/desktop/session" = {
                idle-delay = mkUint32 900;
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

            "org/gnome/settings-daemon/plugins/power" = {
                power-button-action = "interactive";
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
                            (entry "cutecom.desktop" 3)
                            (entry "firefox.desktop" 4)
                            (entry "com.axosoft.GitKraken.desktop" 5)
                            (entry "thunderbird.desktop" 6)
                            (entry "code.desktop" 7)
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
                    "org.gnome.Nautilus.desktop"
                    "firefox.desktop"
                    "thunderbird.desktop"
                    "code.desktop"
                    "com.axosoft.GitKraken.desktop"
                ];
                remember-mount-password = true;
            };

            "org/gnome/shell/extensions/astra-monitor" = {
                headers-height = 20;
                memory-update = 1.0;
                network-update = 1.0;
                panel-box = "left";
                processor-gpu = false;
                processor-update = 1.0;
                storage-header-graph = true;
                storage-ignored = "[\"nvme0n1p1\", \"nvme0n1p3\", \"nvme0n1p4\"]";
                storage-update = 1.0;
            };

            "org/gnome/shell/extensions/custom-accent-colors" = {
                accent-color = "red";
                theme-shell = true;
            };

            "org/gnome/shell/extensions/dash-to-panel" = {
                appicon-margin = 4;
                panel-element-positions = "{ \"0\": [ { \"element\": \"leftBox\", \"visible\": true, \"position\": \"stackedTL\" }, { \"element\": \"showAppsButton\", \"visible\": true, \"position\": \"stackedBR\" }, { \"element\": \"activitiesButton\", \"visible\": false, \"position\": \"stackedTL\" }, { \"element\": \"taskbar\", \"visible\": true, \"position\": \"centerMonitor\" }, { \"element\": \"centerBox\", \"visible\": true, \"position\": \"stackedBR\" }, { \"element\": \"rightBox\", \"visible\": true, \"position\": \"stackedBR\" }, { \"element\": \"dateMenu\", \"visible\": true, \"position\": \"stackedBR\" }, { \"element\": \"systemMenu\", \"visible\": true, \"position\": \"stackedBR\" }, { \"element\": \"desktopButton\", \"visible\": true, \"position\": \"stackedBR\" } ], \"1\": [ { \"element\": \"leftBox\", \"visible\": true, \"position\": \"stackedTL\" }, { \"element\": \"showAppsButton\", \"visible\": true, \"position\": \"stackedBR\" }, { \"element\": \"activitiesButton\", \"visible\": false, \"position\": \"stackedTL\" }, { \"element\": \"taskbar\", \"visible\": true, \"position\": \"centerMonitor\" }, { \"element\": \"centerBox\", \"visible\": true, \"position\": \"stackedBR\" }, { \"element\": \"rightBox\", \"visible\": true, \"position\": \"stackedBR\" }, { \"element\": \"dateMenu\", \"visible\": true, \"position\": \"stackedBR\" }, { \"element\": \"systemMenu\", \"visible\": true, \"position\": \"stackedBR\" }, { \"element\": \"desktopButton\", \"visible\": true, \"position\": \"stackedBR\" } ] }";
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
