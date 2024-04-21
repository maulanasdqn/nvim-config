return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {},
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
		"hrsh7th/nvim-cmp",
	},
	config = function()
		local noice = require("noice")
		local notify = require("notify")
		notify.setup({
			background_colour = "#26233a",
			minimum_width = 60,
			time_formats = {
				detailed = "%H:%M:%S",
				short = "%H:%M",
			},
			top_down = false,
			render = "compact",
			timeout = 1000,
			level = "warn",
			max_width = 80,
			max_height = 10,
			fps = 30,
			icons = {
				ERROR = "",
				WARN = "",
				INFO = "",
				DEBUG = "",
				TRACE = "✎",
			},
			stages = "fade_in_slide_out",
			on_open = function()
				vim.cmd("doautocmd User NoiceOpen")
			end,
			on_close = function()
				vim.cmd("doautocmd User NoiceClose")
			end,
			on_error = function()
				vim.cmd("doautocmd User NoiceError")
			end,
			on_history = function()
				vim.cmd("doautocmd User NoiceHistory")
			end,
			on_history_set = function()
				vim.cmd("doautocmd User NoiceHistorySet")
			end,
			on_history_show = function()
				vim.cmd("doautocmd User NoiceHistoryShow")
			end,
			on_history_close = function()
				vim.cmd("doautocmd User NoiceHistoryClose")
			end,
			on_history_cleared = function()
				vim.cmd("doautocmd User NoiceHistoryCleared")
			end,
			views = {
				cmdline_popup = {
					position = {
						row = 5,
						col = "50%",
					},
					size = {
						width = "50%",
						height = "auto",
					},
				},
			},
			routes = {
				{
					filter = {
						event = "msg_show",
						kind = "",
						find = "written",
					},
					opts = { skip = true },
				},
			},
		})
		noice.setup({
			lsp = {
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
					["cmp.entry.get_documentation"] = true,
				},
			},
		})
	end,
}
