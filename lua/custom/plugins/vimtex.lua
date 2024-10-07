return {
  'lervag/vimtex',
  lazy = false,
  init = function()
    vim.g.vimtex_view_method = 'zathura' -- Use Zathura as the viewer
    vim.g.vimtex_quickfix_mode = 0 -- Disable quickfix
  end,
  config = function()
    vim.g.vimtex_compiler_method = 'latexmk'
    vim.g.vimtex_compiler_latexmk = {
      build_dir = '',
      options = {
        '-pdf', -- Generate PDF
        '-pdflatex=lualatex', -- Explicitly set LuaLaTeX as the engine
        '-shell-escape', -- Enable shell escape
        '-interaction=nonstopmode', -- Continue on errors
      },
      continuous = 1, -- Continuous compilation mode
    }
  end,
}
