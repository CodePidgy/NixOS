{
    programs.zsh = {
        shellAliases = {
            rebuild = "rmbak; sudo nixos-rebuild switch --flake ~/nix#virtuos";
        };
    };
}
