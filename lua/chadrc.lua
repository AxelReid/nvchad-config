-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "chadracula",
  theme_toggle = { "chadracula", "one_light" },
  transparency = true,

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
}

M.ui = {
  cmp = {
    icons_left = true,
    lspkind_text = false,
    style = "default",
    format_colors = {
      tailwind = true,
      -- icon = "󱓻", -- by default
    },
  },

  telescope = { style = "bordered" }, -- borderless / bordered

  statusline = {
    theme = "minimal",
    -- separator_style = "default",
    order = {
      -- "mode",
      "file",
      "git",
      "%=",
      "lsp_msg",
      "%=",
      "diagnostics",
      "lsp",
      -- "cwd",
      "cursor",
    },
  },
}

M.term = {
  float = {
    relative = "editor",
    border = "single",
  },
}

M.colorify = {
  mode = "virtual",
}

return M
