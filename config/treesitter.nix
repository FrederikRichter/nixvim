{pkgs, ...}:
{
    plugins.treesitter = {
        enable = false;
        settings = {
            highlight = {
                additional_vim_regex_highlighting = true;
                custom_captures = { };
                disable = [
                ];
                enable = true;
            };
            sync_install = false;

            indent = {
                enable = true;
            };
        };
        nixvimInjections = false;
        grammarPackages = pkgs.vimPlugins.nvim-treesitter.allGrammars;
    };
}
