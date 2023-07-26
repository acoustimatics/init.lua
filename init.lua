vim.g.mapleader = " "

vim.o.number = true
vim.o.relativenumber = true
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.tabstop = 4

require('packer').startup(function (use)
    use 'wbthomason/packer.nvim'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'L3MON4D3/LuaSnip'
    use 'Mofiqul/vscode.nvim'
end)

local luasnip = require('luasnip')
luasnip.setup {}

local cmp = require('cmp')
cmp.setup {
    -- snippet engine is required
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    window = {
    },
    mapping = cmp.mapping.preset.insert({
        ['<CR>'] = cmp.mapping.confirm({ select = true })
    }),
    sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
    },
}

local cmp_nvim_lsp = require('cmp_nvim_lsp')
local nvim_cmp_capabilities = cmp_nvim_lsp.default_capabilities()

local lspconfig = require('lspconfig')
lspconfig.rust_analyzer.setup {
    capabilities = nvim_cmp_capabilities,
}

local vscode = require('vscode')
vscode.load('dark')
