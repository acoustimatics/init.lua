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
    mason_lspconfig.setup_handlers({
      function (server_name) -- default handler
        require("lspconfig")[server_name].setup({})
      end,
    })
  end,
}
