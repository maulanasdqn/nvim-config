return {
	"lukas-reineke/indent-blankline.nvim",
	event = { "BufReadPre", "BufNewFile" },
	main = "ibl",
	enabled = false,

	config = function()
		local indent = require("ibl")
		indent.setup()
	end,
}
