return {
  "rachartier/tiny-inline-diagnostic.nvim",
  event = "VeryLazy", -- Or `LspAttach`
  priority = 1000,    -- needs to be loaded in first
  config = function()
    require('tiny-inline-diagnostic').setup({
      preset = "amongus",
      multilines = {
        -- Enable multiline diagnostic messages
        enabled = false,

        -- Always show messages on all lines for multiline diagnostics
        always_show = false,

        -- Trim whitespaces from the start/end of each line
        trim_whitespaces = false,

        -- Replace tabs with spaces in multiline diagnostics
        tabstop = 4,
      },

    })
    vim.diagnostic.config({ virtual_text = false }) -- Only if needed in your configuration, if you already have native LSP diagnostics
  end
}
