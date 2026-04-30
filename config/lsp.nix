{pkgs, ...}:
{
    extraPackages = with pkgs; [ rustfmt ];
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
            rust_analyzer = {
                enable = true; 
                installCargo = true;
                installRustc = true;
                settings = {
                    check = {
                        command = "clippy"; 
                        extraArgs = ["--all-targets"];
                    };
                    cargo = {
                        allFeatures = true;
                    };
                    procMacro = {
                        enable = true;
                    };
                    rustfmt = {
                        enable = true;
                    };
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
    plugins.tiny-inline-diagnostic = {
        enable = true;
    };
    plugins.lsp-format = {
        enable = true;
        settings = {
            sync = true;
            format_on_save = true;
        };
    };
}
