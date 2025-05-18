return {
  'mrcjkb/haskell-tools.nvim',
  init = function()
    vim.g.haskell_tools = {
      hls = {
        settings = {
          haskell = {
            formattingProvider = 'stylish-haskell',
          },
        },
      },
    }
  end,
}
