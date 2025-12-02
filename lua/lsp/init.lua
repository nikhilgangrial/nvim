vim.lsp.enable({
    "lua_ls",
    "ts_ls",
    "rust-analyzer",
    "pyright",
    "ruff",
})


vim.diagnostic.config({ signs = true })


require "lsp.overides.lua_ls"
