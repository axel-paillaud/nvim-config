-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true 

-- Theme gruvbox
require("gruvbox").setup({
    overrides = {

    }
})

-- "light" for bright theme
-- "dark" for dark theme
--
vim.o.background = "light"
vim.cmd([[colorscheme gruvbox]])

