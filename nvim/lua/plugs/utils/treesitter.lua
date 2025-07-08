return {
	"nvim-treesitter/nvim-treesitter",
	-- loads treesitter only while reading a file or creating a new one
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false, -- Prevents interference with Catppuccin
			},
			indent = {
				enable = true,
			},
			rainbow = {
				enable = true,
				extended_mode = true,
				max_file_lines = 1000,
			},
			ensure_installed = {
				"bash",
				"c",
				"dockerfile",
				"json",
				"lua",
				"markdown",
				"markdown_inline",
				"nix",
				"python",
				"regex",
				"javascript",
				"typescript",
				"tsx",
				"vim",
				"vimdoc",
				"yaml",
			},
		})
	end,
}
