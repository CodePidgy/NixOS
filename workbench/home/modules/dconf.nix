{ lib, ... }: {
    dconf = with lib.hm.gvariant; {
        settings = {
            "org/gnome/shell/extensions/dash-to-panel" = {
                available-monitors = [ 1 0 ];
                panel-sizes = "{\"0\":32,\"1\":32}";
                primary-monitor = 1;
            };
        };
    };
}
