return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",

        -- web dev stuff
        "css-lsp",
        "emmet-ls",
        "eslint-lsp",
        "html-lsp",
        "prettierd",
        "tailwindcss-language-server",
        "typescript-language-server",

        "intelephense",
        "php-cs-fixer",

        -- python
        "black",
        "pyright",
        "ruff",
      },
    },
  },
}
