local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local cmp = require "cmp"

local servers = {
  "cssls",
  "pyright",
  "clangd",
  "jsonls",
  "eslint",
  "emmet_ls",
  "emmet_language_server",
  "quick_lint_js",
}

-- `/` cmdline setup.
cmp.setup.cmdline("/", {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = "buffer" },
  },
})

-- `:` cmdline setup.
cmp.setup.cmdline(":", {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = "path" },
  }, {
    {
      name = "cmdline",
      option = {
        ignore_cmds = { "Man", "!" },
      },
    },
  }),
})

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- vim.notify = require("noice").notify
-- vim.lsp.handlers["textDocument/hover"] = require("noice").hover
-- vim.lsp.handlers["textDocument/signatureHelp"] = require("noice").signature
