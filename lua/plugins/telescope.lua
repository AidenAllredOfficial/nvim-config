require('telescope').setup {
  defaults = {
    mappings = { i = {} }
  },
  pickers = {},
  extensions = {}
}

require("telescope").load_extension('harpoon')
