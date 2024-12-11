-- from kickstart.nvim's init.lua

return {
  'echasnovski/mini.nvim',
  config = function()
    -- Better around/inside textobjects
    require('mini.ai').setup { n_lines = 500 }

    -- Add/delete/replace surroundings (brackets, quotes, etc.)
    --  e.g.:
    --      - saiw) to [S]urround [A]dd [I]nner [W]ord [)]Paren
    --      - sd' to [S]urround [D]elete [']quotes
    --      - sr)' to [S]urround [R]eplace [)] [']
    require('mini.surround').setup()

    -- Simple and easy statusline.
    --  There are other statusline plugin options available.
    local statusline = require 'mini.statusline'
    -- set use_icons to true if you have a Nerd Font
    statusline.setup { use_icons = vim.g.have_nerd_font }

    -- You can configure sections in the statusline by overriding their
    --  default behavior. For example, here we set the section for cursor
    --  location to LINE:COLUMN
    ---@diagnostic disable-next-line: duplicate-set-field
    statusline.section_location = function()
      return '%2l:%-2v'
    end
  end,
}
