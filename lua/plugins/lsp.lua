return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile"},
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "antosha417/nvim-lsp-file-operations", config = true},
    { "folke/neodev.nvim", opts = {} }
  },

  config = function()
    local lspconfig = require("lspconfig")
    local mason_lspconfig = require("mason-lspconfig")
    local cmp_lspconfig = require("cmp_nvim_lsp")
    local keymap = vim.keymap

    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("UserLspConfig", {}),
      callback = function(ev)
        local opts = { buffer = ev.buf, silent = true}
      end
    })

    local capabilities = cmp_lspconfig.default_capabilities()

    local signs = { Error = "x", Warn = "w", Hint = "h", "i"}

    for type, icon in pairs(signs) do 
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = ""})
    end

    mason_lspconfig.setup_handlers({
      function(server_name)
        lspconfig[server_name].setup({
          capabilities = capabilities
        })
      end
    })
  end
}