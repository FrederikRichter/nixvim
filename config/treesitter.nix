{
    plugins.treesitter = {
        enable = true;
        settings = {
            auto_install = false;
            ensure_installed = "all";
            highlight = {
                additional_vim_regex_highlighting = true;
                custom_captures = { };
                disable = [
                ];
                enable = true;
            };
            sync_install = false;

            indent = {
                enable = true;
            };
        };
    };
}
