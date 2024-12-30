return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        css = { "prettierd", "prettier" },
        html = { "prettierd", "prettier" },
        javascript = { "prettierd", "prettier" },
        javascriptreact = { "prettierd", "prettier" },
        typescript = { "prettierd", "prettier" },
        typescriptreact = { "prettierd", "prettier" },
        python = { "isort", "black" },
        php = { "php-cs-fixer" },
      },
      default_format = {
        timeout_ms = 10000,
      },
    },
  },
}
