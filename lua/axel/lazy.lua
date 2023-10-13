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
    "ellisonleao/gruvbox.nvim", priority = 1000,
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
})

-- Theme gruvbox
vim.o.background = "light"
vim.cmd([[colorscheme gruvbox]])

-- nvim-tree
-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- Org-mode
-- Load custom treesitter grammar for org filetype
require('orgmode').setup_ts_grammar()

require('orgmode').setup({
  org_agenda_files = {'~/Sync/org/*', '~/my-orgs/**/*'},
  org_default_notes_file = '~/Sync/org/refile.org',
})

