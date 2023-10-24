return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.3",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function ()
    vim.keymap.set("n", "<leader>P", "<cmd>Telescope<cr>")

    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>p", builtin.find_files, { desc = "Find Files" })
  end,
}
