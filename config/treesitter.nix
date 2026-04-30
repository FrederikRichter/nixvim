{...}:
{
    plugins.treesitter = {
        enable = true;
        highlight = {
            enable = true;
        };
        settings = {
            sync_install = false;

            indent = {
                enable = true;
            };
        };
        nixvimInjections = true;
    };
}
