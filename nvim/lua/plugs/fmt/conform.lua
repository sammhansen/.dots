return {
  "stevearc/conform.nvim",
  opts = {},
  config = function()
    require("conform").setup({
      format_on_save = {
        timeout_ms = 2000,
        lsp_format = "fallback",
      },
      formatters_by_ft = {
        lua = { "stylua" },
        nix = { "alejandra" },
        cs = { "clang-format" },
        cpp = { "clang-format" },
        rust = { "rustfmt", lsp_format = "fallback" },
        js = { "prettierd" },
        css = { "prettierd" },
        scss = { "prettierd" },
        sh = { "shfmt" },
      },
    })
  end,

}
