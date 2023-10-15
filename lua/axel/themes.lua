-- Theme gruvbox
require("gruvbox").setup({
    overrides = {

    }
})
vim.o.background = "light"
vim.cmd([[colorscheme gruvbox]])

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true 
