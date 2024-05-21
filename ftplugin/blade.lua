print("Loading after/ftplugin/blade.lua")

vim.opt_local.expandtab = true
vim.opt_local.tabstop = 2
vim.opt_local.softtabstop = 2
vim.opt_local.shiftwidth = 2

print("Softtabstop: ", vim.opt_local.softtabstop:get())
print("tabstop: ", vim.opt_local.tabstop:get())
print("Shiftwidth: ", vim.opt_local.shiftwidth:get())
