-- autotag-config.lua

return {
  'windwp/nvim-ts-autotag',
  name = 'nvim-ts-autotag',
  dependencies = {
    'nvim-treesitter/nvim-treesitter', -- Required dependency
  },
  config = function()
    require('nvim-ts-autotag').setup {
      -- Global settings
      opts = {
        enable_close = true, -- Auto close tags
        enable_rename = true, -- Auto rename pairs of tags
        enable_close_on_slash = false, -- Auto close on trailing </
      },
      -- Filetype-specific settings
      per_filetype = {
        ['html'] = {
          enable_close = false,
        },
      },
    }
  end,
}
