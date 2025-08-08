return {
  "nvimtools/none-ls.nvim",
  ft = { "python" },
  config = function()
    local nvlsp = require "nvchad.configs.lspconfig"
    local lspconfig = require "lspconfig"

    nvlsp.defaults()
    local on_attach = nvlsp.on_attach
    local capabilities = nvlsp.capabilities

    vim.lsp.enable({"ruff", "pyright"})

    lspconfig.ruff.setup {
      on_attach = on_attach,
      capabilities = capabilities,
      filetypes = { "python" },
    }

    lspconfig.pyright.setup {
      on_attach = on_attach,
      capabilities = capabilities,
      filetypes = { "python" },
    }
  end,

  opts = function()
    local null_ls = require "null-ls"
    local nvlsp = require "nvchad.configs.lspconfig"

    return {
      sources = {
        null_ls.builtins.formattng.ruff,
        null_ls.builtins.diagnostics.pyright.with {
          extra_args = function()
            local virtual = os.getenv "VIRTUAL_ENV" or os.getenv "CONDA_PREFIX" or "/usr"
            return { "--pythonpath", virtual .. "/bin/python3" }
          end,
        },
      },
      on_attach = nvlsp.on_attach,
    }
  end,
}
