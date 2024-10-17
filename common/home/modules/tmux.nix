{ pkgs, ...}: {
    programs.tmux = {
        enable = true;

        mouse = true;

        plugins = with pkgs; [
            tmuxPlugins.sensible
        ];

        extraConfig = ''
            bind-key & kill-window
            bind-key x kill-pane
        '';
    };
}
