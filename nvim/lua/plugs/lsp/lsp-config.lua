return {
  'neovim/nvim-lspconfig',
  dependencies = { 'hrsh7th/nvim-cmp' },

  opts = {
    servers = {
      rust_analyzer = {
        cmd = { "rust-analyzer" },
        settings = {
          ["rust-analyzer"] = {
            cargo = {
              allFeatures = true,
            },
            -- diagnostics = {
            --   disabled = {
            --     "unlinked-file"
            --
            --   },
            -- },
            checkOnSave = {
              command = "clippy",
            },
          },
        },
      },
      lua_ls = {
        settings = {
          Lua = {
            workspace = { checkThirdParty = false },
            completion = { callSnippet = "Replace" },
          },
        },
      },
      nil_ls = {},
      bashls = {},
      jsonls = {},
      csharp_ls = {
        cmd = { "csharp-ls" },
      },
      cssls = {},

    }
  },
  config = function(_, opts)
    local lspconfig = require("lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    for server, config in pairs(opts.servers) do
      config.capabilities = capabilities
      lspconfig[server].setup(config)
    end
  end
}
