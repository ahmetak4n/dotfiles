-- nvim-treesitter import
local nvim_treesitter = require("nvim-treesitter.configs")

-- nvim-treesitter setup
nvim_treesitter.setup({
  ensure_installed = { "c", "go", "lua", "query", "vim", "vimdoc" },
  sync_install = false,
  highlight = { enable = true },
  indent = { enable = true },  
})

