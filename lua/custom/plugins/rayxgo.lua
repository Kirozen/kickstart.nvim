---@type LazySpec
return {
  'ray-x/go.nvim',
  dependencies = { -- optional packages
    'ray-x/guihua.lua',
    'neovim/nvim-lspconfig',
    'nvim-treesitter/nvim-treesitter',
    'theHamsta/nvim-dap-virtual-text',
  },
  config = function()
    require('go').setup()
  end,
  event = { 'CmdlineEnter' },
  ft = { 'go', 'gomod' },
  build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
  keys = {
    { '<leader>cgt', '<cmd>GoAddTag<cr>', mode = 'n', desc = 'Add tags' },
    { '<leader>cgr', '<cmd>GoRmTag<cr>', mode = 'n', desc = 'Remove tags' },
    { '<leader>cgf', '<cmd>GoFillStruct<cr>', mode = 'n', desc = 'Fill struct' },
    { '<leader>cgs', '<cmd>GoFillSwitch<cr>', mode = 'n', desc = 'Fill switch' },
    { '<leader>cge', '<cmd>GoIfErr<cr>', mode = 'n', desc = 'Add if err' },
    { '<leader>cgp', '<cmd>GoFixPlurals<cr>', mode = 'n', desc = 'Fix plurals' },
    { '<leader>cgm', '<cmd>GoModTidy<cr>', mode = 'n', desc = 'Call go mod tidy' },
    { '<leader>cgo', '<cmd>GoImports<cr>', mode = 'n', desc = 'Call goimports' },
  },
}
