-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
  return
end
-- LUALINE
require("lualine").setup{
	options = {
		icons_enabled = false,
		theme = "onedark",
		component_separators = "|",
		section_separators = "",
	},
}
