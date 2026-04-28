{
    plugins.rustaceanvim = {
        enable = true;
        settings = {
            server = {
                cmd = [
                    "rustup"
                    "rust-analyzer"
                ];
                default_settings = {
                    rust-analyzer = {
                        check = {
                            command = "clippy";
                        };
                        inlayHints = {
                            lifetimeElisionHints = {
                                enable = "always";
                            };
                        };
                    };
                };
                standalone = false;
            };

        };
    };
}
