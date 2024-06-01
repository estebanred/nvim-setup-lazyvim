return {
	"kevinhwang91/nvim-ufo",
	event = "BufRead",
	dependencies = {
		{ "kevinhwang91/promise-async" },
		{
			"luukvbaal/statuscol.nvim",
			config = function()
				local builtin = require("statuscol.builtin")
				require("statuscol").setup({
					relculright = true,
					segments = {
						{ text = { builtin.lnumfunc, " " }, click = "v:lua.ScLa" },
						{ text = { "%s" }, click = "v:lua.ScSa" },
						{ text = { builtin.foldfunc, "  " }, click = "v:lua.ScFa" },
					},
				})
			end,
		},
	},
	config = function()
		-- Fold options
		vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
		vim.o.foldcolumn = "1" -- '0' is not bad
		vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
		vim.o.foldlevelstart = 99
		vim.o.foldenable = true
		vim.cmd([[highlight FoldColumn guibg=NONE ctermbg=NONE]])

		require("ufo").setup()
	end,
}
