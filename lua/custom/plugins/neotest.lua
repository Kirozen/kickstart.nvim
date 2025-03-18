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
  keys = {
    {
      '<leader>nr',
      function()
        require('neotest').run.run()
      end,
      desc = 'Run nearest test',
    },
    {
      '<leader>nl',
      function()
        require('neotest').run.run_last()
      end,
      desc = 'Run last test',
    },
    {
      '<leader>ns',
      function()
        require('neotest').run.stop()
      end,
      desc = 'Stop neotest',
    },
    {
      '<leader>nd',
      function()
        require('neotest').run.run { strategy = 'dap' }
      end,
      desc = 'Debug nearest test',
    },
    {
      '<leader>nf',
      function()
        require('neotest').run.run(vim.fn.expand '%')
      end,
      desc = 'Run current file',
    },
    {
      '<leader>na',
      function()
        require('neotest').run.run { suite = true }
      end,
      desc = 'Run all tests',
    },
    {
      '<leader>nv',
      function()
        require('neotest').summary.toggle()
      end,
      desc = 'Toggle summary',
    },
    {
      '<leader>np',
      function()
        require('neotest').output_panel.toggle()
      end,
      desc = 'Toggle output panel',
    },
    {
      '<leader>no',
      function()
        require('neotest').output.open()
      end,
      desc = 'Show test output',
    },
    {
      '<leader>nw',
      function()
        require('neotest').watch.toggle(vim.fn.expand '%')
      end,
      desc = 'Toggle watching file',
    },
  },
}
