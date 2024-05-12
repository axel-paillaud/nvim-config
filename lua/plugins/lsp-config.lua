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

            -- Get typescript lsp installation path for Volar, from Mason install path
            -- Provide it to volar.setup
            -- local typescript_language_server = require('mason-registry')
            -- .get_package('typescript-language-server')
            -- :get_install_path()
            -- .. '/node_modules/typescript/lib'
            --
            local util = require 'lspconfig.util'
            local function get_typescript_server_path(root_dir)

                local global_ts = '/usr/lib/node_modules/typescript/lib'
                -- Alternative location if installed by user:
                -- local global_ts = '/home/[yourusernamehere]/.npm/lib/node_modules/typescript/lib'

                local found_ts = ''
                local function check_dir(path)
                    found_ts =  util.path.join(path, 'node_modules', 'typescript', 'lib')
                    if util.path.exists(found_ts) then
                        return path
                    end
                end
                if util.search_ancestors(root_dir, check_dir) then
                    return found_ts
                else
                    return global_ts
                end
            end

            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.tsserver.setup({})
            lspconfig.volar.setup({
                on_new_config = function(new_config, new_root_dir)
                    new_config.init_options.typescript.tsdk = get_typescript_server_path(new_root_dir)
                end,
            })
            lspconfig.cssls.setup({})
            lspconfig.html.setup({})
            lspconfig.intelephense.setup({})
        end
    },
}
