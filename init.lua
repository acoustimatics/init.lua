-- The nvim-tree plugin suggests to disable netrw early.
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("core.options")
require("core.keymaps")
require("plugins-init")
