local map = vim.keymap.set

-- Remap movement to sensible keys.
map("n", "h", "<Nop>")
map("n", "j", "h")
map("n", "k", "j")
map("n", "l", "k")
map("n", ";", "l")

map("v", "h", "<Nop>")
map("v", "j", "h")
map("v", "k", "j")
map("v", "l", "k")
map("v", ";", "l")

-- Git
map("n", "<leader>sh", "<cmd>Gitsigns stage_hunk <CR>")
map("n", "<leader>rh", "<cmd>Gitsigns reset_hunk <CR>")
map("n", "<leader>rb", "<cmd>Gitsigns reset_buffer <CR>")
map("n", "<leader>sb", "<cmd>Gitsigns stage_buffer <CR>")
map("n", "<leader>lb", "<cmd>Gitsigns blame_line <CR>")

-- Trouble keybinds
map("n", "<leader>xx", function() require("trouble").toggle() end)
map("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end)
map("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end)
map("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
map("n", "<leader>xl", function() require("trouble").toggle("loclist") end)
map("n", "gR", function() require("trouble").toggle("lsp_references") end)

-- Telescope
map('n', '<leader><space>', '<cmd>Telescope buffers<cr>')
map('n', '<leader>?', '<cmd>Telescope oldfiles<cr>')
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
map('n', '<leader>fd', '<cmd>Telescope diagnostics<cr>')
map('n', '<leader>fs', '<cmd>Telescope current_buffer_fuzzy_find<cr>')

-- Debugging

map("v", "<M-k>", "<cmd>lua require('dapui').eval()<CR>")
map("n", "<M-k>", "<cmd>lua require('dapui').eval()<CR>")

map("n", "<leader>d", "<cmd>lua require('dapui').toggle()<CR>")

-- DAP
map('n', '<leader>dc', function() require('dap').continue() end)
map('n', '<leader>dv', function() require('dap').step_over() end)
map('n', '<leader>di', function() require('dap').step_into() end)
map('n', '<leader>do', function() require('dap').step_out() end)
map('n', '<Leader>b', function() require('dap').toggle_breakpoint() end)
map('n', '<Leader>B', function() require('dap').set_breakpoint() end)
map('n', '<Leader>lp', function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
map('n', '<Leader>dr', function() require('dap').repl.open() end)
map('n', '<Leader>dl', function() require('dap').run_last() end)
map({ 'n', 'v' }, '<Leader>dh', function()
  require('dap.ui.widgets').hover()
end)
map({ 'n', 'v' }, '<Leader>dp', function()
  require('dap.ui.widgets').preview()
end)
map('n', '<Leader>df', function()
  local widgets = require('dap.ui.widgets')
  widgets.centered_float(widgets.frames)
end)
map('n', '<Leader>ds', function()
  local widgets = require('dap.ui.widgets')
  widgets.centered_float(widgets.scopes)
end)

-- disable mouse
map("n", "<leftmouse>", "<nop>")
map("v", "<leftmouse>", "<nop>")
map("i", "<leftmouse>", "<nop>")

map("n", "<rightmouse>", "<nop>")
map("v", "<rightmouse>", "<nop>")
map("i", "<rightmouse>", "<nop>")

map("n", "<C-LeftMouse>", "<Nop>")
map("v", "<C-LeftMouse>", "<Nop>")
map("i", "<C-LeftMouse>", "<Nop>")

map("n", "<C-RightMouse>", "<Nop>")
map("v", "<C-RightMouse>", "<Nop>")
map("i", "<C-RightMouse>", "<Nop>")

-- map("n", "<S-LeftMouse>", "<Nop>")
-- map("v", "<S-LeftMouse>", "<Nop>")
-- map("i", "<S-LeftMouse>", "<Nop>")

map("n", "<S-RightMouse>", "<Nop>")
map("v", "<S-RightMouse>", "<Nop>")
map("i", "<S-RightMouse>", "<Nop>")

-- Disable Scroll Wheel

map("n", "<ScrollWheelDown>", "<Nop>")
map("v", "<ScrollWheelDown>", "<Nop>")
map("i", "<ScrollWheelDown>", "<Nop>")

map("n", "<ScrollWheelUp>", "<Nop>")
map("v", "<ScrollWheelUp>", "<Nop>")
map("i", "<ScrollWheelUp>", "<Nop>")

map("n", "<C-ScrollWheelDown>", "<Nop>")
map("v", "<C-ScrollWheelDown>", "<Nop>")
map("i", "<C-ScrollWheelDown>", "<Nop>")

map("n", "<C-ScrollWheelUp>", "<Nop>")
map("v", "<C-ScrollWheelUp>", "<Nop>")
map("i", "<C-ScrollWheelUp>", "<Nop>")

map("n", "<S-ScrollWheelDown>", "<Nop>")
map("v", "<S-ScrollWheelDown>", "<Nop>")
map("i", "<S-ScrollWheelDown>", "<Nop>")

map("n", "<S-ScrollWheelUp>", "<Nop>")
map("v", "<S-ScrollWheelUp>", "<Nop>")
map("i", "<S-ScrollWheelUp>", "<Nop>")
