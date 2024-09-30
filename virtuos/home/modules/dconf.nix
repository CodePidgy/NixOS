{ lib, ... }: {
    dconf = with lib.hm.gvariant; {
        settings = {
            "org/gnome/shell/extensions/dash-to-panel" = {
                panel-sizes = "{\"0\":32}";
            };
        };
    };
}
