---@type LazySpec
return {
  'nvim-neotest/neotest',
  event = { 'BufReadPost', 'BufNewFile' },
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',
    'nvim-neotest/neotest-plenary',
    'nvim-neotest/neotest-vim-test',
    'nvim-neotest/neotest-go',
    'nvim-neotest/neotest-python',
  },
}
