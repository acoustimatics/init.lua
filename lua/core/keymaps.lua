function nmap(keys, fn, desc)
  vim.keymap.set("n", keys, fn, { desc = desc } )
end

-- Diagnostics
nmap("<leader>c?", vim.diagnostic.open_float, "Open diagnositic float")
nmap("<leader>cn", vim.diagnostic.goto_next, "Go to next diagnostic message")
nmap("<leader>cN", vim.diagnostic.goto_prev, "Go to previous diagnostic message")
