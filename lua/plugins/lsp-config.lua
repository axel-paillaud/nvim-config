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
                    'tsserver', 'volar', 'cssls', 'html', 'intelephense', 'lua_ls',
                    'phpactor'
                },
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()

            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            -- Get typescript lsp installation path for Volar, from Mason install path
            -- Provide it to volar.setup
            local typescript_language_server = require('mason-registry')
            .get_package('typescript-language-server')
            :get_install_path()
            .. '/node_modules/typescript/lib'

            local lspconfig = require("lspconfig")

            lspconfig.lua_ls.setup({
                capabilities = capabilities,
            })

            lspconfig.tsserver.setup({
                capabilities = capabilities,
            })

            lspconfig.volar.setup({
                capabilities = capabilities,
                init_options = {
                    typescript = {
                        tsdk = typescript_language_server
                    }
                }
            })

            lspconfig.cssls.setup({
                capabilities = capabilities,
            })

            lspconfig.html.setup({
                capabilities = capabilities,
                filetypes = { "html", "smarty" },
            })

            lspconfig.phpactor.setup({
                capabilities = capabilities,
            })

            -- Keymap
            vim.api.nvim_create_autocmd('LspAttach', {
                callback = function(args)
                    vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = args.buf })
                    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = args.buf })
                    vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, { buffer = args.buf })
                end,
            })
        end
    },
}
