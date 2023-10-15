-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true 
-- Theme gruvbox
require("gruvbox").setup({
    overrides = {

    }
})
vim.o.background = "light"
vim.cmd([[colorscheme gruvbox]])

-- require("bluloco").setup({
--   style = "light",               -- "auto" | "dark" | "light"
--   transparent = false,
--   italics = false,
--   terminal = vim.fn.has("gui_running") == 1, -- bluoco colors are enabled in gui terminals per default.
--   guicursor   = true,
-- })
--
-- vim.cmd('colorscheme bluloco')
