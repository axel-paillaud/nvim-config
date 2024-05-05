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
        'VonHeikemen/lsp-zero.nvim', branch = 'v3.x',
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lsp_zero = require('lsp-zero')
            lsp_zero.on_attach(function(client, bufnr)
                -- see :help lsp-zero-keybindings
                -- to learn the available actions
                lsp_zero.default_keymaps({buffer = bufnr})
            end)
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
