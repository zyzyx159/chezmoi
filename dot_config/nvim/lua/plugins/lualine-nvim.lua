-- ================================================================================================
-- TITLE : lualine.nvim
-- LINKS :
--   > github : https://github.com/nvim-lualine/lualine.nvim
-- ABOUT : A blazing fast and easy to configure Neovim statusline written in Lua.
-- ================================================================================================

return {
	"nvim-lualine/lualine.nvim",
  dependencies = { "catppuccin" },
  config = function()
		require("lualine").setup({
			options = {
				theme = require ("lualine.themes.catppuccin"),
				icons_enabled = true,
				section_separators = { left = "", right = "" },
				component_separators = "|",
			},
      tabline = {
        lualine_a = {'buffers'}
      }
		})
	end,
	dependencies = { "nvim-tree/nvim-web-devicons" },
}
