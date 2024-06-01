return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")

		lualine.setup({
			options = {
				icons_enabled = true,
				component_separators = "|",
				section_separators = "",
			},
			sections = {
				lualine_x = {
					{
						require("noice").api.status.command.get,
						cond = require("noice").api.status.command.has,
						color = { fg = "#3ae0a7", bg = "none" },
					},
				},
				lualine_b = {
					{
						"branch",
						color = { fg = "#3ae0a7", bg = "none" }, -- Change these colors as desired
					},
					{
						"diff",
						color = { fg = "#bf616a", bg = "none" }, -- Change these colors as desired
					},
				},
				lualine_c = {
					{
						"filename",
						path = 1,
						color = { fg = "#3ae0a7", bg = "none" }, -- Change these colors as desired
					},
				},
			},
		})
	end,
}
