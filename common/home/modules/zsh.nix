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
            clean = "nix-collect-garbage --delete-older-than 7d";
            ls = "eza -a --color=always";
            rmbak = "if [ -f ~/.config/gtk-4.0/gtk.css.bak ]; then rm ~/.config/gtk-4.0/gtk.css.bak; fi";
            upgrade = "nix flake update --flake ~/nix";
        };
    };
}
