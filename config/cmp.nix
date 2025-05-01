{
    plugins.cmp = {
        enable = true;
        autoEnableSources = true;
        settings = {
            mapping = {
                __raw = ''
                    cmp.mapping.preset.insert({
                            ['<C-n>'] = cmp.mapping(function(fallback)
                                    if cmp.visible() then
                                    cmp.select_next_item()
                                    else
                                    fallback() 
                                    end
                                    end, { 'i', 's' }),
                            ['<C-p>'] = cmp.mapping(function(fallback)
                                    if cmp.visible() then
                                    cmp.select_prev_item()
                                    else
                                    fallback()
                                    end
                                    end, { 'i', 's' }),
                            ['<C-e>'] = cmp.mapping.abort()
                            })
                '';
                };
            sources = [
            { name = "path"; }
            { name = "buffer"; }
            { name = "luasnip"; }
            { name = "git"; }
            { name = "nvim_lua"; }
            { name = "pandoc_nvim"; }
            { name = "treesitter"; }
            { name = "tmux"; }
            { name = "zsh"; }
            { name = "luasnip"; }
            { name = "latex_symbols"; }
            ];
        };
    };
    plugins.cmp-treesitter.enable = true;
}
