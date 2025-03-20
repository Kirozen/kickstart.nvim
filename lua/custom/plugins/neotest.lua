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
    'lawrence-laz/neotest-zig',
  },
  config = function()
    require('neotest').setup {
      adapters = {
        require 'neotest-go' {
          dap = { justMyCode = false },
          experimental = {
            test_table = true,
          },
          recursive_run = true,
        },
        require 'neotest-python' {
          dap = { justMyCode = false },
        },
        require 'neotest-zig' {
          dap = { adapter = 'lldb' },
        },
        require 'neotest-plenary',
        require 'neotest-vim-test' {
          ignore_file_types = { 'go', 'vim', 'lua', 'python' },
        },
      },
    }
  end,
}
