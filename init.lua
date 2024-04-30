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

require("lazy").setup("plugins")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Themes
-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true 

-- Theme gruvbox
--[[ require("gruvbox").setup({
    overrides = {

    }
}) ]]

-- Nvim Tree
require("nvim-tree").setup()

require("remap");
