{
    programs.alacritty = {
        enable = true;

        settings = {
            shell = "/etc/profiles/per-user/aidan/bin/zsh";

            env = {
                TERM = "xterm-256color";
            };

            window = {
                dimensions = {
                    columns = 100;
                    lines = 25;
                };

                decorations = "full";
                dynamic_title = true;
            };

            font = {
                normal = {
                    family = "JetBrains Mono";
                    style = "Regular";
                };

                bold = {
                    family = "JetBrains Mono";
                    style = "Bold";
                };

                italic = {
                    family = "JetBrains Mono";
                    style = "Italic";
                };

                size = 8;

                offset = {
                    x = 0;
                    y = 0;
                };

                glyph_offset = {
                    x = 0;
                    y = 0;
                };
            };

            colors = {
                primary = {
                    foreground = "0xabb2bf";
                    background = "0x1e2127";
                    dim_foreground = "0x9a9a9a";
                    bright_foreground = "0xe6efff";
                };

                cursor = {
                    text = "0x000000";
                    cursor = "0xffffff";
                };

                normal = {
                    black = "0x1e2127";
                    red = "0xe06c75";
                    green = "0x98c379";
                    yellow = "0xd19a66";
                    blue = "0x61afef";
                    magenta = "0xc678dd";
                    cyan = "0x56b6c2";
                    white = "0x828791";
                };

                bright = {
                    black = "0x5c6370";
                    red = "0xe06c75";
                    green = "0x98c379";
                    yellow = "0xd19a66";
                    blue = "0x61afef";
                    magenta = "0xc678dd";
                    cyan = "0x56b6c2";
                    white = "0xe6efff";
                };

                dim = {
                    black = "0x1e2127";
                    red = "0xe06c75";
                    green = "0x98c379";
                    yellow = "0xd19a66";
                    blue = "0x61afef";
                    magenta = "0xc678dd";
                    cyan = "0x56b6c2";
                    white = "0x828791";
                };

                draw_bold_text_with_bright_colors = true;
            };

            bell = {
                animation = "EaseOutExpo";
                duration = 0;
            };

            selection = {
                semantic_escape_chars = ",│`|:\"' ()[]{}<>";
            };

            cursor = {
                style = {
                    blinking = "On";
                    shape = "Beam";
                };

                blink_interval = 500;
                blink_timeout = 0;
                unfocused_hollow = false;
            };

            mouse = {
                hide_when_typing = true;
            };
        };
    };
}
