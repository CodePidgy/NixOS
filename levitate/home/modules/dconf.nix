{ lib, ... }: {
    dconf = with lib.hm.gvariant; {
        settings = {
            "org/gnome/shell/extensions/dash-to-panel" = {
                available-monitors = [ 0 1 ];
                panel-lengths = ''{ "0": 100, "1": 100 }'';
                panel-sizes = ''{ "0": 32, "1": 32 }'';
                primary-monitor = 0;
            };
        };
    };
}
