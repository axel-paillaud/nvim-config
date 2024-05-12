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
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()

            -- Get typescript lsp installation path for Volar, from Mason install path
            -- Provide it to volar.setup
            local typescript_language_server = require('mason-registry')
            .get_package('typescript-language-server')
            :get_install_path()
            .. '/node_modules/typescript/lib'

            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.tsserver.setup({})
            lspconfig.volar.setup({
                init_options = {
                    typescript = {
                        tsdk = typescript_language_server
                    }
                }
            })
            lspconfig.cssls.setup({})
            lspconfig.html.setup({})
            lspconfig.intelephense.setup({})
        end
    },
}
