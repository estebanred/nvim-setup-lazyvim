-- return {}
return {
	"folke/tokyonight.nvim",
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
		-- require("tokyonight").setup({
		-- 	style = "moon",
		-- })
		vim.cmd([[colorscheme tokyonight-storm]])
	end,
}

-- return {
-- 	{
-- 		"sainnhe/sonokai",
-- 		priority = 1000,
-- 		config = function()
-- 			vim.g.sonokai_transparent_background = "1"
-- 			vim.g.sonokai_enable_italic = "1"
-- 			vim.g.sonokai_style = "andromeda"
-- 			vim.cmd.colorscheme("sonokai")
-- 		end,
-- 	},
-- }

-- return {
-- 	"dgox16/oldworld.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	-- config = true,
-- 	config = function()
-- 		vim.cmd.colorscheme("oldworld")
-- 	end,
-- }

-- return {
-- 	"miikanissi/modus-themes.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	-- config = true,
-- 	config = function()
-- 		vim.cmd.colorscheme("modus")
-- 	end,
-- }

-- return {
-- 	-- "rose-pine/neovim",
--
-- config = function()
-- 	require("rose-pine").setup({
-- 		variant = "moon",
-- 	})
-- 	vim.cmd("colorscheme rose-pine")
-- end,
-- }

-- return {
-- 	"catppuccin/nvim",
-- 	name = "catppuccin",
-- 	priority = 1000,
-- 	config = function()
-- 		vim.cmd("colorscheme catppuccin")
-- 	end,
-- }

-- return {
-- 	"olivercederborg/poimandres.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		require("poimandres").setup({
-- 			-- leave this setup function empty for default config
-- 			-- or refer to the configuration section
-- 			-- for configuration options
-- 		})
-- 	end,
-- 	init = function()
-- 		vim.cmd("colorscheme poimandres")
-- 	end,
-- }

-- return {
-- 	"nyoom-engineering/oxocarbon.nvim",
-- 	config = function()
-- 		vim.opt.background = "dark" -- set this to dark or light
-- 		vim.cmd.colorscheme("oxocarbon")
-- 		local bg_color = "#1e232a"
-- 		local title_color = "#ffffff"
-- 		vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = bg_color })
-- 		vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = bg_color })
-- 		vim.api.nvim_set_hl(0, "TelescopePromptNormal", { bg = bg_color })
-- 		vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = bg_color })
-- 		vim.api.nvim_set_hl(0, "TelescopeResultsNormal", { bg = bg_color })
-- 		vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { bg = bg_color })
-- 		vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { bg = bg_color })
-- 		vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { bg = bg_color })
-- 		vim.api.nvim_set_hl(0, "TelescopeTitle", { fg = title_color, bg = bg_color })
-- 	end,
-- }

-- return {
-- 	"shaunsingh/moonlight.nvim",
-- 	config = function()
-- 		vim.cmd.colorscheme("moonlight") -- Set the colorscheme to moonlight
-- 		vim.g.moonlight_contrast = true -- Enable contrast
-- 		vim.g.moonlight_borders = false -- Disable borders
-- 		vim.g.moonlight_disable_background = true
-- 	end,
-- }

-- return {
-- 	"koalhack/koalight.nvim",
-- 	init = function()
-- 		vim.cmd("colorscheme koalight")
-- 	end,
-- }

-- return {
-- 	"cdmill/neomodern.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		require("neomodern").setup({
-- 			style = "roseprime",
-- 		})
-- 		require("neomodern").load()
-- 	end,
-- }

-- return {
-- 	"navarasu/onedark.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		require("onedark").setup({
-- 			style = "cool",
-- 		})
-- 		require("onedark").load()
-- 	end,
-- }
