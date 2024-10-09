return {
  'goolord/alpha-nvim',
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'
    local datetime = os.date ' %H:%M '
    local path = vim.fn.getcwd()

    dashboard.section.header.val = {
      '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
      '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⣀⣀⡀⠀⠀⠰⣿⣭⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
      '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⠶⠛⠋⠉⠉⠉⠉⠉⠉⠛⢳⡶⣿⣾⣿⡿⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
      '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡏⠀⠀⣀⣀⣤⣤⣤⣤⣤⣤⣼⣧⡟⣼⢋⣥⠶⠲⢦⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
      '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣦⣀⠈⠉⠻⠦⣤⣀⣀⣀⣶⣿⣷⣟⠋⠙⠳⢦⣄⡀⠉⠛⠶⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
      '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣈⣩⡿⠶⠶⠖⠲⠿⠿⠿⣿⣻⣿⣿⣦⣄⣀⠀⠈⠛⢶⣄⠀⠈⠻⣦⡀⠀⠀⠀⠀⠀⠀⠀',
      '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡶⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠋⠀⠈⠉⠙⠛⠿⣿⣛⠛⠋⠻⠄⠀⠈⣷⠀⠀⠀⠀⠀⠀⠀',
      '⠀⢀⣀⡀⠀⠀⠀⣀⣠⣴⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⣶⡶⠶⠶⠶⠟⠀⠀⠀⠀⠀⠀⠀',
      '⠀⢹⡍⠙⠛⠛⠋⠉⠁⠀⠀⠀⠀⣀⣀⣀⣀⣀⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
      '⠀⠈⢷⣄⠀⠀⠀⠀⠀⢀⣤⣶⣿⣿⣿⣭⣍⣹⡏⠀⠀⠀⠀⠀⠀⠀⠀⣠⡶⠂⠀⠀⠀⠀⠀⠀⠀⠈⢷⡄⠀⠀⠀⠀⠀⠀⠀⠀',
      '⠀⠀⠀⢙⣷⠀⠀⠀⣰⢟⣵⣿⣥⡀⠀⠀⠈⠻⣧⠀⠀⠀⠀⠀⠀⣠⠞⣿⠀⠀⠀⠀⠀⠀⢀⣧⠀⠀⠀⢻⡆⠀⠀⠀⠀⠀⠀⠀',
      '⠀⠀⢠⡟⠁⠀⢀⣼⠋⣼⣿⣿⣿⣷⠀⠀⠀⠀⠘⣇⠀⠀⠀⢠⡾⠁⣀⣽⣦⣤⣀⡀⠀⢠⣾⠿⣧⣀⠀⠀⢻⣆⠀⠀⠀⠀⠀⠀',
      '⠀⢰⡟⠀⠀⢠⡾⠁⠀⢿⡛⠛⠛⠁⠀⠀⠀⠀⢠⣯⠀⠀⣰⠏⣰⣟⣉⡀⠀⠀⠈⠻⣶⣿⡛⠀⠈⣿⣷⠖⠀⠙⢷⣄⠀⠀⠀⠀',
      '⢠⡟⠀⢀⡠⠟⠀⠀⠀⠈⠻⣤⡀⠀⠀⠀⢀⣴⠟⠹⣆⢠⡏⢠⣿⣿⣿⣿⡆⠀⠀⠀⢹⡏⠻⣷⣶⡟⠁⠀⠀⠀⠀⠈⣻⡆⠀⠀',
      '⣼⠃⠀⠘⣤⠀⠀⠀⠀⠀⠀⠈⠉⠛⠛⣛⠉⠀⠀⠀⠙⢿⣇⠘⣟⠛⠟⠋⠀⠀⠀⠀⢰⣧⡀⠘⣿⠀⠀⠀⠀⢠⣤⠾⠋⠀⠀⠀',
      '⣿⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣹⣦⣤⣤⣤⡄⠀⠀⢀⠙⢦⣄⡀⠀⠀⣀⣴⣟⢸⡇⠀⠀⠀⠀⢿⠀⠈⢷⣄⠀⠀⠀⠀',
      '⢿⡀⠀⠀⣷⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⠟⠛⠋⠉⠉⠛⠛⢾⡟⠁⠀⠈⠉⠛⠋⠉⠀⠙⢿⡇⠀⠀⠀⠀⢸⡇⠀⠀⠉⠳⠶⣤⡀',
      '⠘⢷⣀⣤⠘⢷⣄⡀⠀⠀⠀⠀⢠⡿⠁⠀⠀⠀⠀⠀⠀⠀⠘⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⡀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⣠⡾⠁',
      '⠀⠈⠛⠿⣦⡀⠈⣿⣶⣤⣀⠀⠈⠓⠦⣀⠀⠀⠀⠀⠀⠀⢰⡇⠀⠀⠀⠀⠀⠀⠀⠀⣰⠞⠁⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⣿⠀⠀',
      '⠀⠀⠀⠀⠀⠙⠻⠿⣿⣿⣟⣻⣶⣦⣤⣀⡉⠑⠒⠦⠤⠴⠟⠀⠀⠀⠀⠀⠀⠀⠀⣴⣏⠀⠀⠀⠀⠀⠀⢸⡇⣿⣄⠀⢀⡏⠀⠀',
      '⠀⠀⠀⠀⠀⠀⠀⣰⢿⣟⡙⣛⣿⣿⣿⢟⣿⣿⠶⣶⣦⣤⣤⣀⣀⠀⠀⠀⠀⢀⣾⡿⠋⠀⠀⠀⠀⠀⠀⣾⣿⣟⣿⢀⡾⠃⠀⠀',
      '⠀⠀⠀⠀⠀⢠⡾⠃⣼⠈⢿⣿⣯⣡⣾⡿⢻⡿⠀⢺⡟⠻⢿⣿⣿⣿⣿⣿⡿⠟⠋⠀⠀⠀⠀⠀⠀⢀⣾⣿⠿⠛⣿⣫⣥⣤⠀⠀',
      '⠀⠀⢰⡟⢷⣯⣤⣴⡇⠀⠀⠈⠉⠉⠁⣴⣿⡁⢠⣾⡷⣶⣶⠻⢿⣦⣄⡉⠓⠶⠤⠴⢶⡾⠃⢀⣠⣾⣿⣷⣾⣿⣛⣉⣉⣿⠀⠀',
    }
    dashboard.section.buttons.val = {}

    local footer = {
      type = 'text',
      val = path,
      opts = { position = 'center', hl = 'Comment' },
    }

    local bottom_section = {
      type = 'text',
      val = datetime .. '| Hi Spurk :3',
      opts = {
        position = 'center',
      },
    }

    local section = {
      header = dashboard.section.header,
      bottom_section = bottom_section,
      buttons = dashboard.section.buttons,
      footer = footer,
    }

    local opts = {
      layout = {
        { type = 'padding', val = 8 },
        section.header,
        { type = 'padding', val = 2 },
        section.buttons,
        { type = 'padding', val = 1 },
        section.bottom_section,
        { type = 'padding', val = 1 },
        section.footer,
      },
    }

    alpha.setup(opts)
  end,
}
