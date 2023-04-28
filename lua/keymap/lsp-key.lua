-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '<space>dp', vim.diagnostic.goto_prev)
vim.keymap.set('n', '<space>gn', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>ds', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', '<space>dc', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', '<space>df', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', '<space>ho', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'imp', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>aw', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>rw', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>fw', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<space>td', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>ft', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})
