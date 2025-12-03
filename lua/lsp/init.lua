vim.lsp.enable(require "lsp.servers")

vim.diagnostic.config { signs = true }

require "lsp.overides.lua_ls"
