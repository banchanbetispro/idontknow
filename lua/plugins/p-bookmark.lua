return {
  'MattesGroeger/vim-bookmarks',
  dependencies = {
    'tom-anders/telescope-vim-bookmarks.nvim',
  },
  config = function()
    --vim.cmd([[highlight BookmarkSign ctermbg=None ctermfg=None]])
    --vim.cmd([[highlight BookmarkLine ctermbg=None,ctermfg=None]])
    vim.cmd([[highlight BookmarkLine ctermbg=None ctermfg=None]])
    vim.g.bookmark_sign = ''
    vim.g.bookmark_highlight_lines = 1

    require('telescope').load_extension 'vim_bookmarks'

    local keymap = vim.keymap
    keymap.set(
      'n',
      'mm',
      ':BookmarkToggle<CR>'
     )
    keymap.set(
      'n',
      '<leader>fma',
      '<cmd>lua require("telescope").extensions.vim_bookmarks.all()<cr>'
     )
    keymap.set(
      'n',
      '<leader>fmc',
      '<cmd>lua require("telescope").extensions.vim_bookmarks.current_file()<cr>'
    )
  end
}
