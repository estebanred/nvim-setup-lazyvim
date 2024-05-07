local is_transparent = true
return {
	{
		"folke/tokyonight.nvim",
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			require("tokyonight").setup({
				style = "night",
				transparent = is_transparent,
				styles = {
					sidebars = is_transparent and "transparent" or "dark",
					floats = is_transparent and "transparent" or "dark",
				},
			})
			vim.cmd([[colorscheme tokyonight]])
		end,
	},
}
