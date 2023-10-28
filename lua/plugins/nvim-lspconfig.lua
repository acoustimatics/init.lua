-- Callback for when LSP attaches to a buffer.
local on_attach = function (_, bufnr)
  local nmap = function(keys, func, desc)
    vim.keymap.set("n", keys, func, { buffer = bufnr, desc = desc })
  end

  nmap("n", "<leader>lr", vim.lsp.buf.rename, "Rename")
  nmap("n", "<leader>la", vim.lsp.buf.code_action, "Code Action")
end

-- Setup handler for Mason's setup_handlers function.
local setup_handler = function (server_name)
  require("lspconfig")[server_name].setup({
    on_attach = on_attach,
  })
end

return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function ()
    require("mason").setup()

    local mason_lspconfig = require("mason-lspconfig")
    mason_lspconfig.setup()
    mason_lspconfig.setup_handlers({ setup_handler })
  end,
}
