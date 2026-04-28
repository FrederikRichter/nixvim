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
                            "--fallback-style=webkit"
                    ];
                    filetypes = [
                        "c"
                        "cpp"
                        "h"
                    ];
                    };
            };
            rust-analyzer = {
                enable = true; 
                installCargo = true;
                installRustc = true;
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
    plugins.tiny-inline-diagnostic = {
        enable = true;
    };
}
