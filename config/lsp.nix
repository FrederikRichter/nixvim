{
    plugins.lsp = {
        enable = true;
        servers = {
            clangd = {
                enable = true;
            };
            # typst_lsp = {
            #     enable = true;
            # };
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
