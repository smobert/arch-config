return {
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown", "unknown", "text" },
    build = function() vim.fn["mkdp#util#install"]() end,
    keys = {
      {
        "<leader>md",
        "<cmd>MarkdownPreviewToggle<cr>",
        desc = "Markdown Preview Toggle",
      },
    },
  }
}
