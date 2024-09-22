return {
  'lervag/vimtex',
  lazy = false, -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration
    vim.g.vimtex_view_method = 'zathura'
    vim.g.vimtex_quickfix_mode = 0 -- Disable the quickfix list
  end,
  config = function()
    -- Enable continuous compilation
    vim.g.vimtex_compiler_method = 'latexmk' -- Use latexmk for continuous compilation
    vim.g.vimtex_compiler_latexmk = {
      continuous = 1, -- Continuous mode
    }
  end,
}
