require "nvchad.options"

-- add yours here!

local o = vim.o

o.cursorlineopt = "both" -- to enable cursorline!
vim.wo.relativenumber = true

-- vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
--   border = "single", -- or "single", "double", "solid", "shadow", etc.
-- })

-- Override the floating preview to always use a border
local orig_util = vim.lsp.util

local floating_preview = orig_util.open_floating_preview

function orig_util.open_floating_preview(contents, syntax, opts, ...)
  opts = opts or {}
  opts.border = opts.border or "single" -- "single", "double", "solid", etc
  return floating_preview(contents, syntax, opts, ...)
end
