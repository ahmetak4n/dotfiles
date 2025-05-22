--
-- Improve interface for users with highlight
--

return {
  -- path
  "nvim-treesitter/nvim-treesitter",
  
  -- build config
  build = ":TSUpdate",

  -- tag
  tag = "v0.9.3",

  -- config
  config = function () 
    require("plugins.nvim-treesitter.config")
  end,  
}
