return {
	"Exafunction/codeium.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"hrsh7th/nvim-cmp",
	},
	event = { "InsertEnter", "CmdlineEnter" },
	config = function()
		require("codeium").setup({})
	end,
}
