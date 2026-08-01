require("lazy.core")
require("lazy.lazy")

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

vim.lsp.enable("clangd")
vim.lsp.enable("lua_ls")
vim.lsp.enable("pyright")
vim.lsp.enable("html")

