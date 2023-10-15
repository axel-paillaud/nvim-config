-- Keymap for nvim-tree
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<leader>ef', ':NvimTreeFocus<CR>')

-- Keymap to control DAP. See :help dap-mappings for more idea
local dap = require("dap")

vim.keymap.set('n', '<F5>', function() require('dap').continue() end)
vim.keymap.set('n', '<F10>', function() require('dap').step_over() end)
vim.keymap.set('n', '<F11>', function() require('dap').step_into() end)
vim.keymap.set('n', '<F12>', function() require('dap').step_out() end)
vim.keymap.set('n', '<leader>b', require 'dap'.toggle_breakpoint)
vim.keymap.set('n', '<leader>B', function()
    require 'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))
end)
-- View the value for the expression under the cursor in a floating window :
vim.keymap.set({'n', 'v'}, '<leader>v', require 'dap.ui.widgets'.hover)
