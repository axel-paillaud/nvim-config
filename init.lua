vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd('set number')
vim.cmd('set expandtab')
vim.cmd('set shiftwidth=4')
vim.cmd('set tabstop=4')
vim.cmd('set autoindent')
vim.cmd('set smartindent')

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
    "nvim-treesitter/nvim-treesitter",	
    "nvim-orgmode/orgmode",
    "ellisonleao/gruvbox.nvim", priority = 1000,
    "nvim-tree/nvim-tree.lua",
    "nvim-tree/nvim-web-devicons",
})

vim.o.background = "light"
vim.cmd([[colorscheme gruvbox]])

require'nvim-treesitter.configs'.setup {
  ensure_installed = "javascript", -- S'assurer que le langage est installé
  highlight = {
    enable = true,              -- Activer la coloration syntaxique
  },
}

-- nvim-tree
-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- Org-mode
-- Load custom treesitter grammar for org filetype
require('orgmode').setup_ts_grammar()

-- Treesitter configuration
require('nvim-treesitter.configs').setup {
  -- If TS highlights are not enabled at all, or disabled via `disable` prop,
  -- highlighting will fallback to default Vim syntax highlighting
  highlight = {
    enable = true,
    -- Required for spellcheck, some LaTex highlights and
    -- code block highlights that do not have ts grammar
    additional_vim_regex_highlighting = {'org'},
  },
  ensure_installed = {'org'}, -- Or run :TSUpdate org
}

require('orgmode').setup({
  org_agenda_files = {'~/Dropbox/org/*', '~/my-orgs/**/*'},
  org_default_notes_file = '~/Dropbox/org/refile.org',
})
