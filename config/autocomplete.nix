{
    plugins.cmp = {
        enable = true;
        autoEnableSources = true;
        settings = {
            mapping = {
                __raw = ''
                    cmp.mapping.preset.insert({
                            ['<Tab>'] = cmp.mapping(function(fallback)
                                    if cmp.visible() then
                                    cmp.select_next_item()
                                    else
                                    fallback() 
                                    end
                                    end, { 'i', 's' }),
                            ['<S-Tab>'] = cmp.mapping(function(fallback)
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
            { name = "nvim_lsp"; }
            { name = "path"; }
            { name = "buffer"; }
            { name = "luasnip"; }
            { name = "cmdline"; }
            { name = "git"; }
            { name = "greek"; }
            { name = "nvim_lua"; }
            { name = "pandoc_nvim"; }
            { name = "treesitter"; }
            { name = "rg"; }
            { name = "tmux"; }
            { name = "zsh"; }
            { name = "luasnip"; }
            { name = "latex_symbols"; }
            ];
        };
    };
}
