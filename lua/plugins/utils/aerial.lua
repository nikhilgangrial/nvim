return {
  'stevearc/aerial.nvim',
  opts = function(_, opts)
    local more_opts = {
      event = { "VeryLazy" },
      backends = { "treesitter", "lsp", "markdown" },
    }
  end,
  -- Optional dependencies
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
    "folke/snacks.nvim"
  },
  -- Keyboard shortcuts
  keys = function(_, keys)
    local aerial = require("aerial")
    vim.list_extend(keys, {
      { 
        "<leader>of", 
        function()
          aerial.snacks_picker()
        end,
        desc = "Open Aerial [Floating]"
      }
    })
  end
}
