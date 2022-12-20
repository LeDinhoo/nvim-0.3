require("tokyonight").setup({
	style = "night",
	light_style = "day",
	transparent = true,
	terminal_colors = false,
	styles = {
	  comments = { italic = true, bold = true },
	  keywords = { italic = true, bold = true },
	  string   = { italic = true },
	  functions = {},
	  variables = {},
	  sidebars = "dark",
	  floats = "dark",
	},
	sidebars = { "qf", "help" },
	day_brightness = 0.2,
	night_brightness = 0.2,
	hide_inactive_statusline = false,
	dim_inactive = false,
	lualine_bold = false,

	background = "#E61E2128"
-- 	-- foreground = "#FFFFFF",
-- 	-- highlight = "#FF0000",
-- 	-- cursor = "#00FF00",
-- 	-- color_palette = {
-- 	--   comments = "#0000FF",
-- 	--   keywords = "#00FF00",
-- 	--   string = "#FF00FF",
-- 	--   functions = "#00FFFF",
-- 	--   variables = "#FFFF00"
-- 	-- }
  })

vim.opt.background = "dark" -- set this to dark or light
vim.cmd("colorscheme tokyonight")
