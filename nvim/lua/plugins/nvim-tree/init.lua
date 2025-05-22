--
-- File explorer tree
--

return {
  -- path
  "nvim-tree/nvim-tree.lua",
  
  -- plugin's dependencies
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  -- plugin tag
  tag = "v1.12.0",
  
  -- load begining of vim
  lazy = false,
 

  config = function()
    require("plugins.nvim-tree.config")
  end,
}
