return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },

  config = function()
    local lint = require "lint"

    lint.linters_by_ft = {
      javascript = { "eslint_d " },
      cpp = { "cpplint" },
      python = { "pylint" },
      html = { "htmlhint" },
      css = { "stylelint" },
      lua = { "luacheck" },
      json = { "jsonlint" },
    }

    vim.api.nvim_create_autocmd({ "BufWritePost" }, {
      callback = function()
        lint.try_lint()
      end,
    })
  end,
}
