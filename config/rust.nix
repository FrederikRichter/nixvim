{pkgs, ...}:
{
    extraPackages = with pkgs; [
        rustup
        rustfmt
        lspmux
        rust-analyzer
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
                    "run"
                    "nightly"
                    "rust-analyzer"
                ];
                default_settings = {
                    rust-analyzer = {
                        installCargo = true;
                        installRustc = true;
                        installClippy = true;
                        cargo = {
                            allFeatures = true;
                            };
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
