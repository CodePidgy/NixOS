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
            };

            "org/gnome/shell/extensions/dash-to-panel" = {
                animate-appicon-hover = true;
                available-monitors = [ 1 0 ];
                panel-sizes = "{\"0\":32,\"1\":32}";
                primary-monitor = 1;
            };
        };
    };
}
