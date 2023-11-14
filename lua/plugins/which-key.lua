return {
  "folke/which-key.nvim",
  init = function ()
    vim.opt.timeout = true
    vim.opt.timeoutlen = 1000

    require("which-key").register({
      ["<leader>c"] = { name = "Code", _ = "which_key_ignore" },
    })
  end,
  opts = { },
}

