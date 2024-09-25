{
    programs.thunderbird = {
        enable = true;

        profiles = {
            aidan = {
                isDefault = true;
            };
        };

        settings = {
            "mailnews.message_display.disable_remote_image" = false;
        };
    };
}
