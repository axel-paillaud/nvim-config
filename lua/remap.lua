-- Keymap for nvim-tree
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<leader>ef', ':NvimTreeFocus<CR>')

-- Keymap for prev and next file
vim.api.nvim_set_keymap('n', '<S-l>', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-h>', ':bprev<CR>', { noremap = true, silent = true })

-- Show diagnostic in popup
vim.keymap.set('n', '<leader>dd', function()
  vim.diagnostic.open_float(nil, {
    focusable = true,
    border = "rounded",
    source = "always",
    prefix = '',
  })
end, { desc = "Show diagnostic in popup" })

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

vim.keymap.set('n', '<Leader>lp', function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
vim.keymap.set('n', '<Leader>dr', function() require('dap').repl.open() end)
vim.keymap.set('n', '<Leader>dl', function() require('dap').run_last() end)

-- Stop the current debug session
vim.keymap.set('n', '<Leader>dc', function() require('dap').close() end)

-- View the value for the expression under the cursor in a floating window :
vim.keymap.set({'n', 'v'}, '<leader>dh', require 'dap.ui.widgets'.hover)

vim.keymap.set({'n', 'v'}, '<Leader>dp', function()
    require('dap.ui.widgets').preview()
end)
vim.keymap.set('n', '<Leader>df', function()
    local widgets = require('dap.ui.widgets')
    widgets.centered_float(widgets.frames)
end)
vim.keymap.set('n', '<Leader>ds', function()
    local widgets = require('dap.ui.widgets')
    widgets.centered_float(widgets.scopes)
end)

