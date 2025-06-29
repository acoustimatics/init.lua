return {
  "neovim/nvim-lspconfig",
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    "mason-org/mason-lspconfig.nvim",
  },
  config = function ()
    --
    -- LSP Attach event handler.
    --
    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup('config-lsp-attach', { clear = true }),
      callback = function (event)
        local nmap = function(keys, func, desc)
          vim.keymap.set("n", keys, func, { buffer = event.buf, desc = desc })
        end

        nmap("<leader>cR", vim.lsp.buf.rename, "Rename")
        nmap("<leader>ca", vim.lsp.buf.code_action, "Code Action")

        local builtin = require("telescope.builtin")
        nmap("<leader>cd", builtin.lsp_definitions, "Definitions")
        nmap("<leader>cr", builtin.lsp_references, "References")
        nmap("<leader>cs", builtin.lsp_document_symbols, "Document Symbols")
      end,
    }) -- LspAttach auto-command

    --
    -- Mason setup.
    --
    require("mason-lspconfig").setup({
      handlers = function (server_name)
        require("lspconfig")[server_name].setup({})
      end,
    })
  end, -- config
}
