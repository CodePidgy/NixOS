{
    programs.zsh = {
        shellAliases = {
            rebuild = "sudo nixos-rebuild switch --flake ~/nix#virtuos; rmbak";
        };
    };
}
