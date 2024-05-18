return {
	{
		"gelguy/wilder.nvim",
		keys = {
			":",
			"?",
		},
		dependencies = {
			"catppuccin/nvim",
		},
		config = function()
			local wilder = require("wilder")
			local macchiato = require("catppuccin.palettes").get_palette("macchiato")

			-- Create a highlight group for the popup menu
			local text_highlight =
				wilder.make_hl("WilderText", { { a = 1 }, { a = 1 }, { foreground = macchiato.text } })
			local mauve_highlight =
				wilder.make_hl("WilderMauve", { { a = 1 }, { a = 1 }, { foreground = macchiato.mauve } })

			-- Enable wilder when pressing :, / or ?
			wilder.setup({ modes = { ":", "/", "?" } })

			-- Enable fuzzy matching for commands and buffers
			wilder.set_option("pipeline", {
				wilder.branch(
					wilder.cmdline_pipeline({
						fuzzy = 1,
					}),
					wilder.vim_search_pipeline({
						fuzzy = 1,
					})
				),
			})
			wilder.set_option(
				"renderer",
				wilder.popupmenu_renderer({
					highlights = {
						border = "Normal", -- highlight to use for the border
					},
					max_height = "15%", -- max height of the palette
					min_width = "25%",
					highlighter = wilder.basic_highlighter(),
					left = { " ", wilder.popupmenu_devicons() },
					right = { " ", wilder.popupmenu_scrollbar() },
				})
			)
		end,
	},
}
