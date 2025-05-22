--
-- LSP - Language Server Protocol for Neovim (https://microsoft.github.io/language-server-protocol/)
--

return {
  -- path
  "neovim/nvim-lspconfig",
 
  -- plugin tag
  tag = "v2.1.0",

  -- config
  config = function()
    require("plugins.nvim-lspconfig.config")
  end,
}
