return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.3",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function ()
    vim.keymap.set("n", "<leader>p", "<cmd>Telescope<cr>")
  end,
}
