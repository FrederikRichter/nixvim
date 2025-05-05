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
    };
    plugins.tiny-inline-diagnostic = {
        enable = true;
    };
}
