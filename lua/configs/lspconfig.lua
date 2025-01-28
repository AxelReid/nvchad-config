-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

local servers = {
  "html",
  "cssls",
  "ts_ls",
  "prismals",
  "emmet_language_server",
  "jsonls",
  "svelte",
  "tailwindcss",
  "pyright", -- or "pylsp"
  -- "ruff",
}
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    capabilities = nvlsp.capabilities,
    on_init = nvlsp.on_init,
  }
end
