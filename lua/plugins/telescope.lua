return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.4",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function ()
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>f", builtin.find_files, { desc = "Files (Telescope)" })
    vim.keymap.set("n", "<leader>b", builtin.buffers, { desc = "Buffers (Telescope)" })
  end,
}
