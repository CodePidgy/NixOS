{
    programs.zsh = {
        shellAliases = {
            rebuild = "sudo nixos-rebuild switch --flake ~/nix#levitate --max-jobs 8; rmbak";
        };
    };
}
