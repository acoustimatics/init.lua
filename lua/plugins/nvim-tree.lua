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

    vim.keymap.set("n", "<leader>tf", "<cmd>NvimTreeFocus<cr>", { desc = "Tree Focus" })
    vim.keymap.set("n", "<leader>tt", "<cmd>NvimTreeToggle<cr>", { desc = "Tree Toggle" })
  end,
}
