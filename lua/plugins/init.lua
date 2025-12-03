vim.pack.add {
  -- lsp and parser
  { src = "https://github.com/nvim-treesitter/nvim-treesitter" }, --TS
  { src = "https://github.com/neovim/nvim-lspconfig" }, --LSP

  -- maosn
  { src = "https://github.com/mason-org/mason.nvim" }, --mason

  -- telescope replacement
  { src = "https://github.com/folke/snacks.nvim" }, --snacks

  -- autocomplete
  { src = "https://github.com/saghen/blink.cmp", version = vim.version.range "^1" }, --blink.cmp

  -- which-key
  { src = "https://github.com/folke/which-key.nvim" }, --which-key

  -- comments
  { src = "https://github.com/numToStr/Comment.nvim" }, --Comment

  -- noice and deps
  { src = "https://github.com/folke/noice.nvim" }, --noice
  { src = "https://github.com/MunifTanjim/nui.nvim" }, --nui
  { src = "https://github.com/rcarriga/nvim-notify" }, --notify

  -- bufferline
  { src = "https://github.com/akinsho/bufferline.nvim" }, --bufferline
  { src = "https://github.com/nvim-tree/nvim-web-devicons" }, --wev-dev-icons
  { src = "https://github.com/tiagovla/scope.nvim" }, --scope

  -- lualine
  { src = "https://github.com/nvim-lualine/lualine.nvim" }, --lualine

  -- wanings and problems
  { src = "https://github.com/rachartier/tiny-inline-diagnostic.nvim" },
}

require("Comment").setup()
require("nvim-web-devicons").setup()
require("bufferline").setup()
require("scope").setup()
require("lualine").setup {}
require("tiny-inline-diagnostic").setup()

require "plugins.setup.blink"
require "plugins.setup.mason"
require "plugins.setup.noice"
require "plugins.setup.snacks"
