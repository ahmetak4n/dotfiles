-- lspconfig import
local lspconfig = require("lspconfig")

-- lsp for golang
lspconfig.gopls.setup{}

-- lsp for python
lspconfig.pyright.setup{}

-- lsp for typescript
lspconfig.eslint.setup{}

