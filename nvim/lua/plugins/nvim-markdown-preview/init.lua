-- 
-- Markdown preview 
--

return {
  -- path
  "iamcco/markdown-preview.nvim",

  -- buiild config
  build = "cd app && yarn install",

  -- usable commands
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },

  -- supported file types
  ft = { "markdown" },
}
