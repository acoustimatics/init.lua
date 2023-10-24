return {
  "nvim-treesitter/nvim-treesitter",
  config = function ()
    require'nvim-treesitter.configs'.setup {
      ensure_installed = {
        -- Suggested to always be installed.
        "c",
        "lua",
        "vim",
        "vimdoc",
        "query",

        -- Optional
        "markdown",
        "rust",
      },
      sync_install = false,
      auto_install = true,
      ignore_install = { },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    }
  end,
}
