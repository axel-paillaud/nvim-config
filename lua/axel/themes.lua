-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true 

-- Theme gruvbox
require("gruvbox").setup({
    overrides = {

    }
})

-- "light" for clear theme
-- "dark" for dark theme
vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

