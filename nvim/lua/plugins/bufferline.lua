return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local mocha = require("catppuccin.palettes").get_palette("mocha")
		local bufferline = require("bufferline")

		vim.opt.termguicolors = true
		bufferline.setup({
			options = {
				-- mode = "tabs",
				offsets = {
					{
						filetype = "neo-tree",
						text = "Nvim Tree",
						separator = true,
						text_align = "left",
					},
				},
				diagnostics = "nvim_lsp",
				separator_style = { "", "" },
				modified_icon = "●",
				show_close_icon = false,
				show_buffer_close_icons = true,
			},
			-- highlights = require("catppuccin.groups.integrations.bufferline").get {
			--   styles = { "italic", "bold" },
			--   custom = {
			--     all = {
			--       -- fill = { bg = "#000000" },
			--     },
			--     mocha = {
			--       background = { fg = mocha.text, bg = mocha.base },
			--       buffer_selected = { fg = mocha.crust, bg = mocha.mauve },
			--       buffer_visible = { fg = mocha.crust, bg = mocha.green },
			--       close_button = { fg = mocha.red, bg = mocha.base },
			--       close_button_visible = { fg = mocha.red, bg = mocha.green },
			--       close_button_selected = { fg = mocha.blue, bg = mocha.mauve },
			--       separator = { fg = mocha.red },
			--       separator_visible = { fg = mocha.red },
			--       separator_selected = { fg = mocha.red },
			--     },
			--   },
			-- }
		})
	end,
}
