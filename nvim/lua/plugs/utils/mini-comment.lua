require("mini.comment").setup({
	options = {
		-- Function to compute custom 'commentstring' (optional)
		custom_commentstring = nil,

		-- Whether to ignore blank lines when commenting
		ignore_blank_line = false,

		-- Whether to ignore blank lines in actions and textobject
		start_of_line = false,

		-- Whether to force single space inner padding for comment parts
		pad_comment_parts = true,
	},

	-- Module mappings. Use `''` (empty string) to disable one.
	mappings = {
		-- Toggle comment (like `gcip` - comment inner paragraph) for both
		-- Normal and Visual modes
		comment = "gc",

		-- Toggle comment on current line
		comment_line = "\\",

		-- Toggle comment on visual selection
		comment_visual = "gc",

		-- Define 'comment' textobject (like `dgc` - delete whole comment block)
		-- Works also in Visual mode if mapping differs from `comment_visual`
		textobject = "gc",
	},
})
