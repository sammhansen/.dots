return {
	{
		"zbirenbaum/copilot.lua",
		lazy = false, -- ensures its loaded during startup
		priority = 1000, -- ensures its loaded before most plugins
		cmd = "Copilot",
		event = "InsertEnter",
		config = function()
			require("copilot").setup({})
		end,
	},
}
