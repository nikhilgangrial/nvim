local map = Snacks.keymap.set

-- Editor basic
map("n", "<leader>/", "gcc", { desc = "Toggle comment", remap = true })
map("v", "<leader>/", "gc", { desc = "Toggle comment", remap = true })

-- TAB management
map("n", "<Tab>", ":tabnext<CR>", { desc = "Next Tab" })
map("n", "<S-Tab>", ":tabnext<CR>", { desc = "Prev Tab" })
map("n", "<leader>x", ":tabclose<CR>", { desc = "Close current tab" })
map("n", "<leader>t", ":e ", { desc = "Open new tab" })


-- LSP keymaps
local lsp = vim.lsp

map("n", "<leader>fm", function() lsp.buf.format() end, { desc = "LSP format file" })
map("n", "<leader>ra", function() end, { desc = "LSP rename" })
