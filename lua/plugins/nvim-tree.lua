return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function ()
    local nvim_tree = require("nvim-tree")

    nvim_tree.setup({
      git = {
        enable = false
      }
    })

    vim.keymap.set("n", "<leader>;;", "<cmd>NvimTreeFocus<cr>")
    vim.keymap.set("n", "<leader>;t", "<cmd>NvimTreeToggle<cr>")
  end,
}
