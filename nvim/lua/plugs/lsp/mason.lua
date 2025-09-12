return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      local mason = require("mason")

      mason.setup({
        ensure_installed = {
          "prettierd",
          "stylua",
          "shfmt",
          "alejandra",
          "clang-format",
          -- linters
          "eslint_d",
          "solhint",

        },
        automatic_installation = true,

        ui = {
          icons = {
            package_pending = " ",
            package_installed = " ",
            package_uninstalled = "󰚌",
          },

          keymaps = {
            toggle_server_expand = "<CR>",
            install_server = "i",
            update_server = "u",
            check_server_version = "c",
            update_all_servers = "U",
            check_outdated_servers = "C",
            uninstall_server = "X",
            cancel_installation = "<C-c>",
          },
        },
      })
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "bashls",
          "jsonls",
          "yamlls",
          "vimls",
          "emmet_language_server",
          "html",
          "cssls",
          "ts_ls",
          "tailwindcss",
          "solidity_ls_nomicfoundation",
        },
      })
    end,
  },

}
