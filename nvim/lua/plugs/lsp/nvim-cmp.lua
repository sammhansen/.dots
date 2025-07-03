return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	lazy = true,
	dependencies = {
		{
			-- snippet plugin
			"L3MON4D3/LuaSnip",
			lazy = true,
			dependencies = "rafamadriz/friendly-snippets",
			config = function()
				require("plugs.lsp.snips.luasnip")
			end,
		},
		{
			"windwp/nvim-autopairs",
			opts = {
				fast_wrap = {},
				disable_filetype = { "TelescopePrompt", "vim" },
			},
			event = "InsertEnter",
			lazy = true,
			config = function(_, opts)
				require("nvim-autopairs").setup(opts)

				-- setup cmp for autopairs
				local cmp_autopairs = require("nvim-autopairs.completion.cmp")
				require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
			end,
		},
		{
			"windwp/nvim-ts-autotag",
			lazy = true,
			event = "InsertEnter",
			config = function()
				local tags = require("nvim-ts-autotag")

				tags.setup({
					opts = {
						-- Defaults
						enable_close = true, -- Auto close tags
						enable_rename = true, -- Auto rename pairs of tags
						enable_close_on_slash = false, -- Auto close on trailing </
					},
					per_filetype = {
						["html"] = {
							enable_close = false,
						},
					},
				})
			end,
		},

		-- completion sources
		{
			"saadparwaiz1/cmp_luasnip",
			"hrsh7th/cmp-nvim-lua",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
		},
		{
			"neovim/nvim-lspconfig",
			lazy = false,
			dependencies = {
				"hrsh7th/cmp-nvim-lsp",
				"williamboman/mason-lspconfig.nvim",
			},
			config = function()
				require("plugs.lsp.lsp-config")
			end,
		},
	},
	config = function()
		local cmp = require("cmp")

		local symbols = {
			Text = "󰉿 ",
			Method = "󰆧 ",
			Function = "󰡱 ",
			Constructor = " ",
			Field = "󰜢 ",
			Variable = "󰘥 ",
			Class = "󰠱",
			Interface = " ",
			Module = " ",
			Property = "󰜢 ",
			Unit = "󰑭",
			Value = "󰎠 ",
			Enum = " ",
			Keyword = "󰌋 ",
			Snippet = " ",
			Color = "󰏘",
			File = "󰈙",
			Reference = "󰈇 ",
			Folder = "󰉋 ",
			EnumMember = " ",
			Constant = "󰭍 ",
			Struct = "󰙅 ",
			Event = " ",
			Operator = "󰆕 ",
		}

		cmp.setup({

			completion = {
				completeopt = "menu,menuone",
			},
			window = {
				documentation = {
					winhighlight = "Normal:Pmenu",
				},
				completion = {
					winhighlight = "Normal:Pmenu",
					scrollbar = false,
				},
			},
			formatting = {
				fields = { "kind", "abbr", "menu" },
				format = function(_, item)
					local a = string.rep(" ", 10)
					item.abbr = item.abbr .. a
					item.menu = " " .. item.kind .. " "
					item.kind = " " .. symbols[item.kind] .. " "
					return item
				end,
			},

			preselect = cmp.PreselectMode.Item,
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				["<C-Space>"] = cmp.mapping.complete(),
				["<CR>"] = cmp.mapping.confirm({ select = true }),
				["<Tab>"] = cmp.mapping.select_next_item(),
				["<S-Tab>"] = cmp.mapping.select_prev_item(),
			}),
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
				{ name = "buffer" },
				{ name = "path" },
			}),
		})
	end,
}
