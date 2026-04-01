return {
	"kylechui/nvim-surround",
	version = "*",
	event = "VeryLazy",
	config = function()
		require("nvim-surround").setup({
			-- keymaps = {
			--   basic = "ys",
			--   manipulate = "cs",
			--   delete = "ds",
			-- }
		})
	end,
}
