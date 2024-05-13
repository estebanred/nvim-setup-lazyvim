-- return {
-- 	"lukas-reineke/indent-blankline.nvim",
-- 	event = { "BufReadPre", "BufNewFile" },
-- 	main = "ibl",
-- 	opts = {
-- 		indent = { char = "┊" },
-- 	},
-- }
local highlight = {
	"CursorColumn",
	"Whitespace",
}
return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = {
		indent = { highlight = highlight, char = "" },
		whitespace = {
			highlight = highlight,
			remove_blankline_trail = false,
		},
		scope = { enabled = false },
	},
}
