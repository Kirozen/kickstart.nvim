---@type LazySpec
return {
  'zbirenbaum/copilot.lua',
  cmd = 'Copilot',
  -- lazy = false,
  event = 'InsertEnter',
  opts = {
    suggestion = { enabled = false },
    panel = { enabled = false },
    filetypes = {
      markdown = true,
      help = true,
    },
  },
  keys = {
    -- { '<c-v>', '<Plug>(copilot-suggest)', mode = 'i', desc = 'Copilot Suggest' },
    -- { '<C-CR>', '<Plug>(copilot-suggest)', mode = 'c', desc = 'Copilot Suggest' },
    -- { '<c-c>', '<Plug>(copilot-next)', mode = 'i', desc = 'Copilot Next' },
    -- { '<c-v>', '<Plug>(copilot-previous)', mode = 'i', desc = 'Copilot Previous' },
    -- { '<C-CR>', '<Plug>(copilot-previous)', mode = 'c', desc = 'Copilot Previous' },
    -- { '<C-CR>', '<Plug>(copilot-dismiss)', mode = 'i', desc = 'Copilot Dismiss' },
    -- { '<C-CR>', '<Plug>(copilot-dismiss)', mode = 'c', desc = 'Copilot Dismiss' },
  },
}
