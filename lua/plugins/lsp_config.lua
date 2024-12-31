
return {
  {
    "williamboman/mason.nvim",
     config = function()
        require('mason').setup()
     end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require('mason-lspconfig').setup({
        ensure_installed = {"lua_ls", "ruff", "pyright", "clangd"}
      })
    end

  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require('lspconfig')
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.ruff.setup({
        capabilities = capabilities,
      })
      lspconfig.pyright.setup({
        capabilities = capabilities,
        filetypes = {"python"},
      })
      lspconfig.clangd.setup({
        init_options = {
          fallbackFlags = {'--std=c++20'}
      },
            capabilities = capabilities,
      })

      vim.keymap.set('n','K', vim.lsp.buf.hover, {})
      vim.keymap.set('n','gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, { desc = "Go to references" })
      vim.keymap.set('n', '<C-q>', ":cclose<CR>", {})

    end
  }
}
