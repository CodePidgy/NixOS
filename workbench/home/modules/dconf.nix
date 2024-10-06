{ lib, ... }: {
    dconf = with lib.hm.gvariant; {
        settings = {
            "org/gnome/shell/extensions/astra-monitor" = {
                sensors-header-show = true;
                sensors-header-sensor1 = ''
                    { "service": "hwmon", "path": [ "k10temp-{$15eb}", "Tctl", "input" ] }
                '';
                sensors-header-sensor2 = ''
                    { "service": "hwmon", "path": [ "BAT1", "in0", "input" ] }
                '';
                sensors-header-sensor1-show = true;
                sensors-header-sensor2-layout = "horizontal";
                sensors-header-sensor2-show = true;
                sensors-update = 2.0;
                storage-ignored = ''["nvme0n1p1", "nvme0n1p3", "nvme0n1p4"]'';
            };

            "org/gnome/shell/extensions/dash-to-panel" = {
                available-monitors = [ 1 0 ];
                panel-sizes = ''{ "0": 32, "1": 32 }'';
                primary-monitor = 1;
                trans-dynamic-anim-target = 0.60;
                trans-dynamic-behavior = "MAXIMIZED_WINDOWS";
                trans-panel-opacity = 0.0;
                trans-use-custom-opacity = true;
                trans-use-dynamic-opacity = true;
            };
        };
    };
}
