return {
  "nvim-tree/nvim-tree.lua",
  version = "v0.99",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      git = {
        ignore = false
      }
    })
  end,
}
