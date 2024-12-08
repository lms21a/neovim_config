
return {
  "terrortylor/nvim-comment",
  config = function()
    require('nvim_comment').setup(
      {
      -- Linters prefer comment and line to have a space in between markers
      marker_padding = true,
      -- should comment out empty or whitespace only lines
      comment_empty = true,
      -- trim empty comment whitespace
      comment_empty_trim_whitespace = true,
      -- Should key mappings be created
      create_mappings = false
      })

    vim.keymap.set('n', '<C-_>', ':CommentToggle<CR>', { desc = 'Toggle comment for line' }) -- Ctrl+/ in normal mode
    vim.keymap.set('v', '<C-_>', ':CommentToggle<CR>gv', { desc = 'Toggle comment for selection' }) -- Ctrl+/ in visual mode

  end
}

