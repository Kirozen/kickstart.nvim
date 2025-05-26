---@type LazySpec
return {
  'hedyhli/outline.nvim',
  lazy = true,
  cmd = { 'Outline', 'OutlineOpen' },
  keys = {
    { '<leader>to', '<cmd>Outline<CR>', desc = '[T]oggle [O]utline' },
  },
  opts = {
    -- Your setup opts here
  },
}
