local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")

local servers = {"tsserver", "sqlls", "dockerls", "tailwindcss", "eslint", "cssls"}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    debug = true,
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
