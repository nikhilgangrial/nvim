require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "ruff", "pyright", "jdtls" }
vim.lsp.enable(servers)

local java_path = os.getenv "HOME" .. "/.local/share/mise/installs/java/21/bin/java"

vim.lsp.config("jdtls", {
  command = { "jdtls", "--java-executable", java_path },
})

-- read :h vim.lsp.config for changing options of lsp servers
