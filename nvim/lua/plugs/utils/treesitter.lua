require("nvim-treesitter.configs").setup({
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false, -- Prevents interference with Catppuccin
	},
	autotag = {
		enable = true,
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
