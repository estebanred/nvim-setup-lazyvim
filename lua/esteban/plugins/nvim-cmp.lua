return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"luckasRanarison/tailwind-tools.nvim",
		"onsails/lspkind.nvim",
		-- other dependencies
	},
	opts = function()
		local cmp = require("cmp")
		local lspkind = require("lspkind")
		local tailwind_tools = require("tailwind-tools.cmp")

		return {
			sources = {
				{ name = "tailwind-tools", priority = 1000 },
				{ name = "nvim_lsp", priority = 900 },
				{ name = "luasnip", priority = 750 },
				{ name = "buffer", priority = 500 },
				{ name = "path", priority = 250 },
			},
			mapping = cmp.mapping.preset.insert({
				["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
				["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
				["<C-e>"] = cmp.mapping.abort(), -- close completion window
				["<CR>"] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
			}),
			formatting = {
				format = lspkind.cmp_format({
					before = tailwind_tools.lspkind_format,
					mode = "symbol_text", -- Show symbol and text
					maxwidth = 50, -- Prevent the popup from showing more than provided characters
					ellipsis_char = "...", -- Show ellipsis when the popup is too wide
					menu = {
						buffer = "[Buffer]",
						nvim_lsp = "[LSP]",
						luasnip = "[Snip]",
						path = "[Path]",
						tailwind_tools = "[Tailwind]",
					},
				}),
			},
		}
	end,
}
