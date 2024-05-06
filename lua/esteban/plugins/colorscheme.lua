return {
	{
		"folke/tokyonight.nvim",
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			local bg = "#191a2a"
			require("tokyonight").setup({
				style = "night",
				on_colors = function(colors)
					colors.bg = bg
				end,
			})
			vim.cmd([[colorscheme tokyonight]])
		end,
	},
}
