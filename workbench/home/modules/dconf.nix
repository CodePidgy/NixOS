{ lib, ... }: {
    dconf = with lib.hm.gvariant; {
        settings = {
            "org/gnome/shell/extensions/dash-to-panel" = {
                animate-appicon-hover = true;
                available-monitors = [ 1 0 ];
                panel-sizes = "{\"0\":32,\"1\":32}";
                primary-monitor = 1;
            };
        };
    };
}
