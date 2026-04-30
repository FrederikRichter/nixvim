{pkgs, ...}:
{
    extraPackages = with pkgs; [
        rustfmt
        lspmux
    ];

    plugins.rustaceanvim = {
        enable = true;
        settings = {
            tools = {
                enable_clippy = true;
            };
            server = {
                cmd = [
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
