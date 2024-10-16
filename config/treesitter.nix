{pkgs, ...}:
{
    plugins.treesitter = {
        enable = true;
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
        nixvimInjections = true;
        grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
            latex
            typst
        ];
    };
}
