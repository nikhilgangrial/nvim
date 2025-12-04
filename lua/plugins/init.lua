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

  -- blankline
  { src = "https://github.com/lukas-reineke/indent-blankline.nvim" }, --ibl

  -- wanings and problems
  { src = "https://github.com/rachartier/tiny-inline-diagnostic.nvim" },

  -- themes
  { src = "https://github.com/rebelot/kanagawa.nvim" }, -- kanagawa
  { src = "https://github.com/folke/tokyonight.nvim" }, -- tokyonight

  -- aerial
  { src = "https://github.com/stevearc/aerial.nvim" }, -- aerial

  -- mini.nvim
  { src = "https://github.com/nvim-mini/mini.surround" },
  { src = "https://github.com/nvim-mini/mini.ai" },
  { src = "https://github.com/nvim-mini/mini.pairs" },
  { src = "https://github.com/nvim-mini/mini.move" },
}

require("Comment").setup()
require("ibl").setup{}
require("tiny-inline-diagnostic").setup()

require("scope").setup()
require("nvim-web-devicons").setup()
require("bufferline").setup()
require("lualine").setup {}

-- themes
require("kanagawa").setup()
require("tokyonight").setup()

-- mini
require("mini.ai").setup {}
require("mini.surround").setup {}
require("mini.pairs").setup {}
require("mini.move").setup {}

require "plugins.setup.blink"
require "plugins.setup.mason"
require "plugins.setup.noice"
require "plugins.setup.snacks"
require "plugins.setup.aerial"
