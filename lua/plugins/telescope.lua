return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",

  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },

  config = function()

    local tele = require("telescope")
    local actions = require("telescope.actions")

    tele.setup({
      defaults = {
        path_display = { "smart" },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-j>"] = actions.move_selection_next,
          },
        },
      },
    })

    tele.load_extension("fzf")

    local keymap = vim.keymap

    keymap.set("n", "<leader>ss", "<CMD>Telescope find_files<CR>", { desc = "Fuzzy Find Files" })
    keymap.set("n", "<leader>SS", "<CMD>Telescope live_grep<CR>", { desc = "Fuzzy Find Files" })

  end
}
