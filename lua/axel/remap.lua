-- Keymap for nvim-tree
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<leader>ef', ':NvimTreeFocus<CR>')

-- Keymap to control DAP
local dap = require("dap")

vim.keymap.set('n', '<F5>', require 'dap'.continue)
vim.keymap.set('n', '<leader>so', require 'dap'.step_over)
vim.keymap.set('n', '<leader>sin', require 'dap'.step_into)
vim.keymap.set('n', '<leader>sout', require 'dap'.step_out)
vim.keymap.set('n', '<leader>b', require 'dap'.toggle_breakpoint)
vim.keymap.set('n', '<leader>B', function()
    require 'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))
end)
-- View the value for the expression under the cursor in a floating window :
vim.keymap.set('n', '<leader>v', require 'dap.ui.widgets'.hover)
