local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

vim.g.mapleader = " "
vim.g.maplocalleader = " "


require("lazy").setup({
  -- IDK it was in the example.
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  -- LSP
  require("lsp_config"),

  -- Autocomplete
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  "saadparwaiz1/cmp_luasnip",
  { "L3MON4D3/LuaSnip",   dependencies = { "https://github.com/AidenAllredOfficial/friendly-snippets/" }, },

  -- Navigation
  "nvim-telescope/telescope.nvim",
  { "ThePrimeagen/harpoon", branch = "harpoon2",                              dependencies = { "nvim-lua/plenary.nvim" } },
  { "folke/trouble.nvim",   dependencies = { "nvim-tree/nvim-web-devicons" }, },

  -- Treesitter
  "nvim-treesitter/nvim-treesitter",
  "nvim-treesitter/nvim-treesitter-textobjects",
  "nvim-treesitter/nvim-treesitter-refactor",

  -- Development
  "folke/neodev.nvim",
  "nvimtools/none-ls.nvim",
  { "rcarriga/nvim-dap-ui",   dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio", "ChristianChiarulli/neovim-codicons" } },

  -- Python Debugger
  "mfussenegger/nvim-dap-python",

  -- Text Editing
  { "kylechui/nvim-surround", config = function() end },
  "numToStr/Comment.nvim",
  "m4xshen/autoclose.nvim",
  { 'echasnovski/mini.align', version = false },

  -- Git Integration
  "lewis6991/gitsigns.nvim",

  -- Practice
  "ThePrimeagen/vim-be-good",

  -- Visual
  { "Mofiqul/dracula.nvim",   lazy = false,   priority = 1000 },
  "nvim-lualine/lualine.nvim",
  { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
})

-- Theme Setup

vim.g.moonflyTransparent = true
vim.cmd("colorscheme moonfly")

-- Plugin Setup


require("plugins/harpoon_conf")
require("plugins/telescope")
require("plugins/treesitter_conf")
require("plugins/dracula")
-- require("plugins/dracula")

require('lualine').setup {
  options = {
    theme = 'moonfly'
  }
}

require("neodev").setup({
  library = { plugins = { "nvim-dap-ui" }, types = true },
})

require("plugins/debug")

-- LSP
require("lsp_2")
require("plugins/none_ls")

-- Single step setup.
require("gitsigns").setup()
require("autoclose").setup()
require("harpoon").setup({})
require("Comment").setup()
require("nvim-surround").setup()
require("mini.align").setup()

-- Diable LSP highlighting
for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
  vim.api.nvim_set_hl(0, group, {})
end

-- Options
require("keymaps")
require("options")
