{
    programs.bash = {
        enable = true;

        enableCompletion = true;

        bashrcExtra = ''
            export PATH=$PATH:$HOME/bin:$HOME/.local/bin
        '';

        shellAliases = {
            rebuild = "sudo nixos-rebuild switch --flake ~/nix";
        };
    };
}