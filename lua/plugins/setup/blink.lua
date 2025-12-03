require("blink.cmp").setup {
  keymap = {
    preset = "enter",
    ["<Tab>"] = { "select_next", "fallback" },
    ["<S-Tab>"] = { "select_prev", "fallback" },
  },
  appearance = { nerd_font_variant = "normal" },
  completion = {
    documentation = { auto_show = true },
    list = { selection = { auto_insert = true } },
  },
  sources = { default = { "lsp", "path", "snippets", "buffer" } },
  fuzzy = { implementation = "prefer_rust_with_warning" },
}
