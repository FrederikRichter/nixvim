{
    plugins.lsp = {
        enable = true;
        servers = {
            clangd = {
                enable = true;
                settings = {
                    cmd = [
                            "clangd"
                            "--background-index"
                            "--clang-tidy"
                            "--completion-style=bundled"
                            "--cross-file-rename"
                    ];
                    filetypes = [
                        "c"
                        "cpp"
                        "h"
                    ];
                    };
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
