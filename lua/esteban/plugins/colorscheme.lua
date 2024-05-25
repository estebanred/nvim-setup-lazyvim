-- return {
-- 	{
-- 		"folke/tokyonight.nvim",
-- 		priority = 1000, -- make sure to load this before all the other start plugins
-- 		config = function()
-- 			require("tokyonight").setup({
-- 				style = "moon",
-- 			})
-- 			vim.cmd([[colorscheme tokyonight]])
-- 		end,
-- 	},
-- }
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
-- 	"rose-pine/neovim",
--
-- 	config = function()
-- 		require("rose-pine").setup({
-- 			variant = "moon",
-- 		})
-- 		vim.cmd("colorscheme rose-pine")
-- 	end,
-- }

return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		vim.cmd("colorscheme catppuccin")
	end,
}

-- return {
-- 	"nyoom-engineering/oxocarbon.nvim",
-- 	config = function()
-- 		vim.opt.background = "dark" -- set this to dark or light
-- 		vim.cmd.colorscheme("oxocarbon")
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
