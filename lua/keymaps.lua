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
map("n", "<leader>x", "<cmd>bd<CR>", { desc = "Close current buffer" })

-- Panes
map("n", "<leader>v", "<cmd>vsplit<CR>", { desc = "Split vertically" })
map("n", "<leader>h", "<cmd>split<CR>", { desc = "Split horizontally" })

map("n", "<C-h>", "<C-w>h", { desc = "Move left" })
map("n", "<C-l>", "<C-w>l", { desc = "Move right" })
map("n", "<C-j>", "<C-w>j", { desc = "Move up" })
map("n", "<C-k>", "<C-w>k", { desc = "Move down" })


-- LSP keymaps
local lsp = vim.lsp

map("n", "<leader>lf", lsp.buf.format, { desc = "LSP format file" })
map("n", "<leader>lr", lsp.buf.rename, { desc = "LSP rename" })
map("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
