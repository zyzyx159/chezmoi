-- ================================================================================================
-- TITLE : catppuccin-nvim
-- ABOUT : Soothing pastel theme for the high-spirited!
-- LINKS :
--   > github : https://github.com/catppuccin/nvim
-- ================================================================================================

return {
	"catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
	priority = 1000,
	config = function()
    require("catppuccin").setup({
      flavour = "mocha",
      integrations = {
        notify = true,
        treesitter = true,
        gitsigns = true,
      },
    })
		vim.cmd("colorscheme catppuccin-mocha")
	end,
}
