local cmp = require('cmp')
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lspconfig = require('lspconfig')

cmp.setup ({
  sources = {
    { 
      name = 'nvim_lsp'
    }
  }
})

lspconfig.clangd.setup {
  capabilities = capabilities,
}
