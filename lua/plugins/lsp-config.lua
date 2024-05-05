return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    'tsserver', 'volar', 'cssls', 'html', 'intelephense', 'lua_ls'
                },
                -- add handlers after lsp-zero here
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.tsserver.setup({})
            lspconfig.volar.setup({
                init_options = {
                    typescript = {
                        tsdk = '/usr/lib/node_modules/typescript/lib'
                    }
                }
            })
            lspconfig.cssls.setup({})
            lspconfig.html.setup({})
            lspconfig.intelephense.setup({})
        end
    },
}
