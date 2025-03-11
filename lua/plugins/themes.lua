-- return {
    -- "ellisonleao/gruvbox.nvim",
    -- priority = 1000,
    -- lazy = false,
    -- config = function()
        -- "light" or "dark" theme
        -- vim.o.background = "dark"
        -- vim.cmd([[colorscheme gruvbox]])

        -- set termguicolors to enable highlight groups
        -- vim.opt.termguicolors = true
    -- end
-- }

return {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function()
        -- Optionally configure and load the colorscheme
        -- directly inside the plugin declaration.
        vim.g.gruvbox_material_enable_italic = true
        vim.cmd.colorscheme('gruvbox-material')
        vim.o.background = 'dark'
    end
}
