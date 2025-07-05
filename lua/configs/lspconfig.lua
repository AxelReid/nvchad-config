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
  -- "kotlin_language_server",
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

-- lspconfig.kotlin_language_server.setup {
--   on_attach = nvlsp.on_attach,
--   capabilities = nvlsp.capabilities,
--   on_init = nvlsp.on_init,
--   filetypes = { "kotlin", "kts", "kt" }, -- Ensure `.kts` files are supported
--   root_dir = lspconfig.util.root_pattern("settings.gradle", "build.gradle", "gradlew", ".git", "pom.xml"),
-- }
