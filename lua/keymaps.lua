local map = Snacks.keymap.set

-- Editor basic
map("n", "<leader>/", "gcc", { desc = "Toggle comment", remap = true })
map("v", "<leader>/", "gc", { desc = "Toggle comment", remap = true })

-- TAB management
map("n", "<leader><Tab>", "<cmd>tabnext<CR>", { desc = "Next Tab(Cyclic)" })
map("n", "<leader><C-x>", "<cmd>tabclose<CR>", { desc = "Close current tab" })
map("n", "<leader>t", "<cmd>tabnew<CR>", { desc = "Open new tab" })

-- Buffer management
map("n", "<Tab>", "<cmd>bnext<CR>", { desc = "Next buffer" })
map("n", "<S-Tab>", "<cmd>bprevious<CR>", { desc = "Prev buffer" })


-- LSP keymaps
local lsp = vim.lsp

map("n", "<leader>lf", function() lsp.buf.format() end, { desc = "LSP format file" })
map("n", "<leader>lr", function() lsp.buf.rename() end, { desc = "LSP rename" })
