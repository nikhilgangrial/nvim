local aerial = require "aerial"
aerial.setup { backends = { "treesitter", "lsp" } }

vim.keymap.set("n","<leader>of", function()
  aerial.snacks_picker()
end, { desc = "Open Aerial [Floating]" })
