vim.pack.add({
    -- lsp and parser
    { src = 'https://github.com/nvim-treesitter/nvim-treesitter' }, --TS
    { src = 'https://github.com/neovim/nvim-lspconfig' },           --LSP

    -- maosn
    { src = 'https://github.com/mason-org/mason.nvim' }, --mason

    -- telescope replacement
    { src = 'https://github.com/folke/snacks.nvim' }, --snacks

    -- autocomplete
    { src = "https://github.com/saghen/blink.cmp",               version = vim.version.range("^1") }, --blink.cmp

    -- comments
    { src = "https://github.com/numToStr/Comment.nvim" }, --Comment

    -- noice and deps
    { src = "https://github.com/folke/noice.nvim" },     --noice
    { src = "https://github.com/MunifTanjim/nui.nvim" }, --nui
    { src = "https://github.com/rcarriga/nvim-notify" }  --notify
})


require("Comment").setup()


require("lua.plugins.setup.blink")
require("lua.plugins.setup.mason")
require("lua.plugins.setup.noice")
require("lua.plugins.setup.snacks")
