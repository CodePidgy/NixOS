{ lib, ... }: {
    dconf = with lib.hm.gvariant; {
        settings = {
            "org/gnome/shell/extensions/astra-monitor" = {
                sensors-header-show = true;
                sensors-header-sensor1 = ''
                    { "service": "hwmon", "path": [ "k10temp-{$15eb}", "Tctl", "input" ] }
                '';
                sensors-header-sensor1-show = true;
                sensors-update = 1.0;
                storage-ignored = ''["nvme0n1p1", "nvme0n1p3", "nvme0n1p4"]'';
            };

            "org/gnome/shell/extensions/dash-to-panel" = {
                available-monitors = [ 1 0 ];
                panel-sizes = ''{ "0": 32, "1": 32 }'';
                primary-monitor = 1;
            };
        };
    };
}
