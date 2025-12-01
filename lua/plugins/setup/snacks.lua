local Snacks = require("snacks")

---@type snacks.Config
Snacks.opts = {
    lazygit = { configure = true },
    keymap = { enabled = true },
    bigfile = { enabled = true },
    dashboard = { enabled = false },
    explorer = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    notifier = { enabled = true },
    picker = { enabled = true },
    quickfile = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
}

Snacks.setup({})

local map = Snacks.keymap.set

-- find
map("n", "<leader>fs", function() Snacks.picker.smart() end, { desc = "Smart Find Files" })
map("n", "<leader>ff", function() Snacks.picker.files() end, { desc = "Find Files" })
map("n", "<leader>fb", function() Snacks.picker.buffers() end, { desc = "Buffers" })
map("n", "<leader>fw", function() Snacks.picker.grep() end, { desc = "Grep" })
map("n", "<leader>fh", function() Snacks.picker.command_history() end, { desc = "Command History" })
map("n", "<leader>fl", function() Snacks.picker.notifications() end, { desc = "Notification History | Logs" })
map("n", "<leader>fg", function() Snacks.picker.git_files() end, { desc = "Find Git Files" })
map("n", "<leader>fp", function() Snacks.picker.projects() end, { desc = "Projects" })
map("n", "<leader>fr", function() Snacks.picker.recent() end, { desc = "Recent" })

--explorer
map("n", "<leader>fe", function() Snacks.explorer() end, { desc = "File Explorer" })

--lazygit
map("n", "<leader>lg", function() Snacks.lazygit.open() end, { desc = "Open Lazygit" })
