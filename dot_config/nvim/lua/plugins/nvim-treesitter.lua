-- ================================================================================================
-- TITLE : nvim-treesitter
-- ABOUT : Treesitter configurations and abstraction layer for Neovim.
-- LINKS :
--   > github : https://github.com/nvim-treesitter/nvim-treesitter
-- ================================================================================================

return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = { "BufReadPost", "BufNewFile" },
	lazy = false,
	config = function()
		-- Use the new install API instead of configs.setup
		require("nvim-treesitter").install({
			ensure_installed = {
				"bash",
				"c",
				"cpp",
				"css",
				"dockerfile",
				"go",
				"html",
				"javascript",
				"json",
				"lua",
				"markdown",
				"markdown_inline",
				"python",
				"rust",
				"svelte",
				"typescript",
				"vue",
				"yaml",
			},
			auto_install = true,
			sync_install = false,
		})

		-- Enable native treesitter highlighting automatically for files
		vim.api.nvim_create_autocmd("FileType", {
			callback = function()
				local buf = vim.api.nvim_get_current_buf()
				-- Only start treesitter if a valid parser is installed for the filetype
				local lang = vim.treesitter.language.get_lang(vim.bo.filetype)
				if lang and pcall(vim.treesitter.start, buf, lang) then
					-- Successfully started native syntax highlighting
				end
			end,
		})
	end,
}

