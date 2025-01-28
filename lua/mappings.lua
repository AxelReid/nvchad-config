require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map(
  "n",
  "[d",
  [[<Cmd>lua vim.diagnostic.goto_prev({ float = { border = "rounded" } })<CR>]],
  { noremap = true, silent = true, desc = "Go to previous diagnostic" }
)

map(
  "n",
  "]d",
  [[<Cmd>lua vim.diagnostic.goto_next({ float = { border = "rounded" } })<CR>]],
  { noremap = true, silent = true, desc = "Go to next diagnostic" }
)
