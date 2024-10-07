-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
    { '<leader>e', ':Neotree toggle<CR>', desc = 'NeoTree toggle', silent = true },
    { '<C-Left>', ':vertical resize -2<CR>', desc = 'Decrease window size', silent = true },
    { '<C-Right>', ':vertical resize +2<CR>', desc = 'Increase window size', silent = true },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
      filtered_items = {
        visible = true, -- By default, show hidden files in the list
        hide_by_pattern = { '*.aux', '*.log', '*.fls', '*.fdb_latexmk' }, -- Specify hidden file patterns
        hide_hidden_files = true, -- Collapse hidden files into a single expandable group
        expand_hidden = true, -- Allow expanding the hidden files group
      },
    },
  },
}
