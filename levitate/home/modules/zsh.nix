{
    programs.zsh = {
        enable = true;

        antidote = {
            enable = true;

            plugins = [
                "Aloxaf/fzf-tab"
                "zsh-users/zsh-autosuggestions"
                "zsh-users/zsh-completions"
                "zsh-users/zsh-syntax-highlighting"
            ];
        };

        autosuggestion = {
            enable = true;
        };

        completionInit = ''
            zstyle ":completion:*" matcher-list 'm:{a-z}={A-Za-z}'
            zstyle ":completion:*" menu no
            zstyle ":completion:*:git-checkout:*" sort false
            zstyle ":fzf-tab:complete:cd:*" fzf-preview 'eza -1 --color=always $realpath'
        '';

        dotDir = ".config/zsh";

        history = {
            ignoreAllDups = true;
            ignoreDups = true;
            ignoreSpace = true;
            path = "$HOME/.config/zsh/.zsh_history";
            share = true;
        };

        initExtra = ''
            eval "$(oh-my-posh init zsh --config https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/refs/heads/main/themes/material.omp.json)"
        '';

        shellAliases = {
            ls = "eza -a --color=always";
            rebuild = "sudo nixos-rebuild switch --flake ~/nix#levitate";
            upgrade = "nix flake update --flake ~/nix";
        };
    };
}
