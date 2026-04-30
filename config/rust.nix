{pkgs, ...}:
{
    extraPackages = with pkgs; [
        rustup
        rustfmt
        rust-analyzer
        clippy
    ];

    plugins.rustaceanvim = {
        enable = true;
        settings = {
            tools = {
                enable_clippy = true;
            };
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
            };

        };
    };
}
