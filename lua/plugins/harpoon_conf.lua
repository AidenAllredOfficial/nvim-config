local harpoon = require("harpoon")
local map = vim.keymap.set

harpoon:setup()

map("n", "<leader>1", function() harpoon:list():select(1) end)
map("n", "<leader>2", function() harpoon:list():select(2) end)
map("n", "<leader>3", function() harpoon:list():select(3) end)
map("n", "<leader>4", function() harpoon:list():select(4) end)
map("n", "<leader>5", function() harpoon:list():select(5) end)
map("n", "<leader>6", function() harpoon:list():select(6) end)
map("n", "<leader>7", function() harpoon:list():select(7) end)
map("n", "<leader>8", function() harpoon:list():select(8) end)
map("n", "<leader>9", function() harpoon:list():select(9) end)
map("n", "<leader>0", function() harpoon:list():select(10) end)

map("n", "C-S-N", function() harpoon:list():next() end)
map("n", "C-S-P", function() harpoon:list():prev() end)

map("n", "<leader>m", function() harpoon:list():add() end)
map("n", "<leader>r", function() harpoon:list():remove() end)

map("n", "<leader>hh", "<cmd>Telescope harpoon marks <CR>")
