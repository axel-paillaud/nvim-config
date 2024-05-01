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
}
