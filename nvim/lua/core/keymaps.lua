--
-- nvim-tree keymaps
-- all folder process starts with 'f'
--
vim.keymap.set("n", "<leader>fe", ":NvimTreeToggle<CR>", {
  noremap = true
})

vim.keymap.set("n", "<leader>ff", ":NvimTreeFocus<CR>", {
  noremap = true
})

--
-- nvim-telescope keymaps
--
vim.keymap.set("n", "<leader>tf", ":Telescope find_files<CR>", {})
vim.keymap.set("n", "<leader>tg", ":Telescope live_grep<CR>", {})
vim.keymap.set("n", "<leader>tb", ":Telescope buffers<CR>", {})
vim.keymap.set("n", "<leader>gs", ":Telescope git_status<CR>", {})
vim.keymap.set("n", "<leader>gc", ":Telescope git_commits<CR>", {})
vim.keymap.set("n", "<leader>gb", ":Telescope git_branches<CR>", {})

--
-- nvim-lspconfig keymaps
-- enable completion triggered by <c-x><c-o>
-- return previos page <c-o>
--
vim.keymap.set("n", "<space>e", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist)

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  callback = function(ev)
    vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

    local opts = { buffer = ev.buf }
    -- go declaration
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
    
    -- go definition
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    
    -- go implementation
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)

    -- go references
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)

    -- rename function, class, etc.
    vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)

    -- show detail about function, packages, etc.
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

    -- show signature help about function, method, etc.
    vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)

    -- add new file or folder current workspace
    vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, opts)
    
    -- remove file or folder in current workspace
    vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, opts)
   
    -- show current workspace root directory
    vim.keymap.set("n", "<space>wl", function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)

    -- show possible actions like open documentation, etc.
    vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)
    
    -- format codes
    vim.keymap.set("n", "<space>f", function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})

--
-- nvim-dap keymaps
--
-- add breakpoint a line
vim.keymap.set("n", "<Leader>bt", function() require("dap").toggle_breakpoint() end, {})

-- continue app running
vim.keymap.set("n", "<Leader>bc", function() require("dap").continue() end, {})
