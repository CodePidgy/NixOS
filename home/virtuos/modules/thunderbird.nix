{
    programs.thunderbird = {
        enable = true;

        profiles = {
            aidan = {
                isDefault = true;
            };
        };

        settings = {
            "mailnews.default_sort_order" = 2;
            "mailnews.default_sort_type" = 18;
            "mailnews.default_view_flags" = 1;
            "mailnews.message_display.disable_remote_image" = false;
        };
    };
}
