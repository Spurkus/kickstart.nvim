return {
  -- Markdown preview in browser configuration
  'iamcco/markdown-preview.nvim',
  build = 'cd app && npm install', -- Install necessary npm dependencies
  ft = { 'markdown' }, -- Load only for markdown files
  config = function()
    vim.g.mkdp_filetypes = { 'markdown' }
    vim.g.mkdp_browser = 'firefox'
    vim.g.mkdp_open_to_the_world = 1 -- Allow open in a new window
    -- Key mapping for opening markdown in the browser
    vim.g.mkdp_markdown_css = '/home/spurk/.config/nvim/lua/custom/plugins/markdown.css'
    vim.api.nvim_set_keymap('n', '<leader>ll', ':MarkdownPreviewToggle<CR>', { noremap = true, silent = true })
  end,
}
