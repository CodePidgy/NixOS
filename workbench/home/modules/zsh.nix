{
    programs.zsh = {
        shellAliases = {
            rebuild = "sudo nixos-rebuild switch --flake ~/nix#workbench --max-jobs 8; rmbak";
        };
    };
}
