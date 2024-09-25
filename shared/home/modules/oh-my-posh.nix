{
    programs.oh-my-posh = {
        enable = true;

        enableZshIntegration = true;

        settings = builtins.fromJSON ''
            {
                "$schema": "https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/schema.json",
                "palette": {
                    "black": "#282c34",
                    "red": "#e06c75",
                    "green": "#98c379",
                    "yellow": "#e5c07b",
                    "blue": "#61afef",
                    "magenta": "#c678dd",
                    "cyan": "#56b6c2",
                    "white": "#dcdfe4",
                    "foreground": "#dcdfe4",
                    "background": "#282c34"
                },
                "terminal_background": "p:background",
                "console_title_template": "{{ .UserName }}@{{ .HostName }}",
                "blocks": [
                    {
                        "alignment": "left",
                        "newline": true,
                        "segments": [
                            {
                                "foreground": "p:blue",
                                "style": "plain",
                                "properties": {
                                    "style": "full"
                                },
                                "template": "{{ .Path }} ",
                                "type": "path"
                            },
                            {
                                "properties": {
                                    "branch_icon": "",
                                    "fetch_status": true,
                                    "fetch_stash_count": true,
                                    "fetch_worktree_count": true
                                },
                                "style": "plain",
                                "template": "<p:yellow>git</>:({{ if or (.Working.Changed) (.Staging.Changed) (gt .StashCount 0) }}<p:magenta>{{ .HEAD }}</>{{ else }}<p:green>{{ .HEAD }}</>{{ end }}{{ if (gt .Ahead 0)}}<p:cyan>{{ .BranchStatus }}</>{{ end }}{{ if (gt .Behind 0)}}<p:cyan>{{ .BranchStatus }}</>{{ end }}{{ if .Staging.Changed }} <p:green>{{ .Staging.String }}</>{{ end }}{{ if .Working.Changed }} <p:red>{{ .Working.String }}</>{{ end }})",
                                "type": "git"
                            }
                        ],
                        "type": "prompt"
                    },
                    {
                        "alignment": "left",
                        "newline": true,
                        "segments": [
                            {
                                "foreground": "p:foreground",
                                "properties": {
                                    "always_enabled": true
                                },
                                "style": "plain",
                                "template": "{{ if gt .Code 0 }}<p:red>({{ .Code }}) </>{{ else }}<p:green>({{ .Code }}) </>{{ end }}> ",
                                "type": "status"
                            }
                        ],
                        "type": "prompt"
                    }
                ],
                "version": 2
            }
        '';
    };
}
