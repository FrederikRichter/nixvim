{
    plugins.lsp = {
        enable = true;
        servers = {
            clangd = {
                enable = true;
            };
            tinymist = {
                enable = true;
            };
            nixd = {
                enable = true;
            };
        };
        inlayHints = true;
    };
    plugins.lsp-format = {
        enable = true;
        settings = {
            clangd = {
                # todo: proper indent
            };
        };
    };
    plugins.tiny-inline-diagnostic = {
        enable = true;
    };
}
