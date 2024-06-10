return {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    lazy = false,
    config = function()
        -- "light" or "dark" theme
        vim.o.background = "dark"
        vim.cmd([[colorscheme gruvbox]])

        -- set termguicolors to enable highlight groups
        vim.opt.termguicolors = true
    end
}
