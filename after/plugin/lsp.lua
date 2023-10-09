local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

-- see :help lsp-zero-guide:integrate-with-mason-nvim
-- to learn how to use mason.nvim with lsp-zero
-- require('mason').setup({})
-- require('mason-lspconfig').setup({
--   handlers = {
--     lsp_zero.default_setup,
--   }
-- })

require('mason').setup({})
require('mason-lspconfig').setup({
    -- Replace the language servers listed here 
    -- with the ones you want to install
    ensure_installed = {'tsserver', 'volar', 'html',},
    handlers = {
        lsp_zero.default_setup,
    },
})
