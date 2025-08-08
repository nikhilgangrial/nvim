return {
  {
    "mrcjkb/rustaceanvim",
    lazy = false,
    ["rust-analyzer"] = {
      cargo = {
        allfeature = true,
      },
    },
    config = function(_, _)
      local nvlsp = require "nvchad.configs.lspconfig"
      vim.g.rustaceanvim = {
        server = {
          on_attach = nvlsp.on_attach,
          on_init = nvlsp.on_init,
          capabilities = nvlsp.capabilities,
        },
      }
    end,
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = true
    end,
  },
  {
    "saecki/crates.nvim",
    event = { "bufread cargo.toml" },
    opts = {
      completion = {
        crates = {
          enabled = true,
        },
      },
      lsp = {
        enabled = true,
        actions = true,
        completion = true,
        hover = true,
      },
    },
  },
}
