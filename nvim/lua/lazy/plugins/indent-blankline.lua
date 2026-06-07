return {
  "lukas-reineke/indent-blankline.nvim",
  event = { "BufReadPre", "BufNewFile" },
  main = "ibl",
  opts = {
    indent = { char = "┊" },
  },
  vim.keymap.set("n", "<leader>i", "<cmd>IBLToggle<CR>", {
    desc = "Toggle indent guides",
  })
}
