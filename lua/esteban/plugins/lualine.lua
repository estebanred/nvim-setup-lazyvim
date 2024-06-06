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
				theme = "nightfly",
			},
			sections = {
				lualine_b = {},
				lualine_c = {
					{
						"buffers",
						show_filename_only = true, -- Show only the filename without path
						hide_filename_extension = false, -- Hide or show the file extension
						show_modified_status = true, -- Show the modified status
						symbols = {
							modified = " ●", -- Text to show when the buffer is modified
						},
						buffers_color = {
							active = { bg = "#8f93a2", fg = "#282c34" },
							inactive = { bg = "#2c3042", fg = "#8f93a2" },
						},
					},
				},
				lualine_y = {
					{
						"branch",
					},
					{
						"diff",
					},
				},
				lualine_x = {
					{
						"filename",
						path = 1,
					},
				},
			},
		})
	end,
}
