return {
    {
        "hrsh7th/cmp-nvim-lsp",
    },
    {
        "L3MON4D3/LuaSnip",
        dependencies = {
            "saadparwaiz1/cmp_luasnip",
            "rafamadriz/friendly-snippets",
        },
    },
    {
        "hrsh7th/nvim-cmp",
        config = function()
            local cmp = require'cmp'
            local luasnip = require('luasnip')
            require("luasnip.loaders.from_vscode").lazy_load()

            -- Extend snippet to framework
            require('luasnip').filetype_extend("vue", {"html", "css"})
            require('luasnip').filetype_extend("blade", {"html",})

            -- Jump to the next/prev snippet placeholder
            vim.keymap.set({'i', 's'}, '<C-j>', function()
                if luasnip.expand_or_jumpable() then
                    luasnip.expand_or_jump()
                end
            end, {silent = true})

            vim.keymap.set({'i', 's'}, '<C-k>', function()
                if luasnip.jumpable(-1) then
                    luasnip.jump(-1)
                end
            end, {silent = true})

            cmp.setup({
                snippet = {
                    -- REQUIRED - you must specify a snippet engine
                    expand = function(args)
                        require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
                    end,
                },
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },
                mapping = cmp.mapping.preset.insert({
                    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                    ['<C-f>'] = cmp.mapping.scroll_docs(4),
                    ['<C-Space>'] = cmp.mapping.complete(),
                    ['<C-e>'] = cmp.mapping.abort(),
                    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
                }),
                sources = cmp.config.sources({
                    { name = 'luasnip' }, -- For luasnip users.
                    { name = 'nvim_lsp' },
                }, {
                        { name = 'buffer' },
                    })
            })
        end
    },
}
