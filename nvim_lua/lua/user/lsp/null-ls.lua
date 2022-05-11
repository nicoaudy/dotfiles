local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
  debug = false,
  sources = {
    formatting.prettier.with({
      filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue", "css", "scss", "less", "html", "json", "jsonc", "yaml", "markdown", "graphql", "handlebars", "svelte" },
      only_local = "node_modules/.bin",
      extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" }
    }),
    formatting.stylelint,
    formatting.phpcsfixer,
    formatting.dart_format,
    formatting.stylua,
    formatting.prismaFmt,
    formatting.black,
    diagnostics.php,
    diagnostics.eslint,
    null_ls.builtins.code_actions.eslint,
  },
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        -- on 0.8, you should use vim.lsp.buf.format instead
        callback = vim.lsp.buf.format,
      })
    end
  end,
})
