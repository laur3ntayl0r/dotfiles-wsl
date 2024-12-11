-- from kickstart's init.lua

return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    main = 'nvim-treesitter.configs', -- Sets main module to use for opts
    -- [[ Configure Treesitter ]] See `:help nvim-treesitter`
    opts = {
      ensure_installed = {
        'bash',
        'c',
        'diff',
        'html',
        'lua',
        'luadoc',
        'markdown',
        'markdown_inline',
        'query',
        'vim',
        'vimdoc',
      },

      -- Autoinstall parsers that are not installed when entering
      -- a buffer using a lang not yet accounted for
      auto_install = true,
      highlight = {
        enable = true,
      },

      -- incremental_selection = {
      --   enable = true,
      --   keymaps = {
      --     init_selection = 'gnn',
      --     node_incremental = 'grn',
      --     scope_incremental = 'grc',
      --     node_decremental = 'grm',
      --   },
      -- },

      indent = {
        enable = true,
      },

      textobjects = {
        select = {
          enable = true,

          -- Automatically jump forward to textobj
          lookahead = true,

          -- Define your own textobj mappings
          keymaps = {
            ['af'] = { query = '@function.outer', desc = 'Select [A]round [F]unction' },
            ['if'] = { query = '@function.inner', desc = 'Select [I]nside [F]unction' },
            ['ac'] = { query = '@class.outer', desc = 'Select [O]utside [C]lass' },
            ['ic'] = { query = '@class.inner', desc = 'Select [I]nside [C]lass' },
          },

          -- You can choose the select mode (default is charwise 'v')
          selection_modes = {
            ['@parameter.outer'] = 'v', -- charwise
            ['@function.outer'] = 'V', -- linewise
            ['@class.outer'] = '<c-v>', -- blockwise
          },

          -- Set to true to enable extending any textobject to include preceding
          -- or succeeding whitespace
          -- include_surrounding_whitespace = true,
        },
      },
    },
  },

  {
    'nvim-treesitter/nvim-treesitter-context',
    dependents = { 'nvim-treesitter' },
    opts = {},
  },

  {
    'nvim-treesitter/nvim-treesitter-textobjects',
    dependents = { 'nvim-treesitter' },
  },
}
