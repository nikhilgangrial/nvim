return {
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
    keys = {
      -- normal mode
      {
        "<C-a>",
        function()
          return require("dial.map").inc_normal "default"
        end,
        expr = true,
        desc = "Increment",
        mode = "n",
      },
      {
        "<C-x>",
        function()
          return require("dial.map").dec_normal "default"
        end,
        expr = true,
        desc = "Decrement",
        mode = "n",
      },
    },
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      code = {
        sign = false,
        width = "block",
        right_pad = 1,
      },
      heading = {
        sign = false,
        icons = {},
      },
      checkbox = {
        enabled = false,
      },
    },
    ft = { "markdown", "norg", "rmd", "org", "codecompanion" },
    config = function(_, opts)
      require("render-markdown").setup(opts)
      require("snacks")
        .toggle({
          name = "Render Markdown",
          get = function()
            return require("render-markdown.state").enabled
          end,
          set = function(enabled)
            local m = require "render-markdown"
            if enabled then
              m.enable()
            else
              m.disable()
            end
          end,
        })
        :map "<leader>um"
    end,
  },
}
