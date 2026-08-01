vim.g.mapleader = " "

local keymap = vim.keymap 

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits the equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- tab management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- lsp management
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(event)
    local opts = { buffer = event.buf }

    keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
    keymap.set("n", "gr", vim.lsp.buf.references, opts)
    keymap.set("n", "gi", vim.lsp.buf.implementation, opts)

    keymap.set("n", "K", vim.lsp.buf.hover, opts)

    keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)

    keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
    keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
    end,
})

