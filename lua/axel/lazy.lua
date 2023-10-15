local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},	
    "nvim-orgmode/orgmode",
    {"ellisonleao/gruvbox.nvim", priority = 1000, config = true, lazy = false},
    "nvim-tree/nvim-tree.lua",
    "nvim-tree/nvim-web-devicons",
    "nvim-lua/plenary.nvim",
    {"nvim-telescope/telescope.nvim", tag = "0.1.3"},
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "numToStr/Comment.nvim",
    "mfussenegger/nvim-dap",
    "mxsdev/nvim-dap-vscode-js",
    {"microsoft/vscode-js-debug", build = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out"},
    {
        'uloco/bluloco.nvim',
        lazy = false,
        priority = 1000,
        dependencies = { 'rktjmp/lush.nvim' },
    },
})

