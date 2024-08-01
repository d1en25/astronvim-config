local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { { "prettier", "prettierd" } },
    html = { "prettier" },
    javascript = { { "prettier", "prettierd" } },
    python = { "black" },
    cpp = { "clang-format" },
    json = { { "prettier", "prettierd" } },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
