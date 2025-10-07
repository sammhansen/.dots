require("plugins.lspconfig.keymaps")

vim.lsp.enable({ "rust_analyzer", "lua_ls", "bashls", "clangd" })

return {
	"neovim/nvim-lspconfig",
	version = "*",
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"mason-org/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		{ "j-hui/fidget.nvim", opts = {} },
		"saghen/blink.cmp",
	},
}
