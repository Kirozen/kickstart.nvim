vim.keymap.set('n', '<S-Tab>', ':bprev<CR>', { noremap = true })
vim.keymap.set('n', '<Tab>', ':bnext<CR>', { noremap = true })
vim.keymap.set('n', '<leader>bd', function()
  require('snacks').bufdelete()
end, { desc = 'Delete Buffer', noremap = true })
vim.keymap.set('n', '<leader>bl', ':blast<CR>', { desc = 'Last Buffer', noremap = true })
vim.keymap.set('n', '<leader>bn', ':bnext<CR>', { desc = 'Next Buffer', noremap = true })
vim.keymap.set('n', '<leader>bp', ':bprevious<CR>', { desc = 'Previous Buffer', noremap = true })
vim.keymap.set('n', '<leader>bf', ':bfirst<CR>', { desc = 'First Buffer', noremap = true })
vim.keymap.set('n', '<leader>se', 'oif err != nil {<CR>}<Esc>Oreturn err<Esc>')
vim.keymap.set('n', '<C-s>', '<cmd>w<cr>')

-- vim.keymap.set('i', '<C-k>', vim.lsp.buf.signature_help, { desc = 'Show signature help' })
vim.keymap.set({ 'i', 'n' }, '<C-k>', function()
  require('lsp_signature').toggle_float_win()
end, { silent = true, noremap = true, desc = 'toggle signature help' })

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('n', '<leader>cd', vim.diagnostic.open_float, { desc = 'See [D]iagnostic under [C]ursor' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

--- Neotest

vim.keymap.set('n', '<leader>nr', function()
  require('neotest').run.run()
end, { desc = 'Run nearest test' })
vim.keymap.set('n', '<leader>nl', function()
  require('neotest').run.run_last()
end, { desc = 'Run last test' })
vim.keymap.set('n', '<leader>ns', function()
  require('neotest').run.stop()
end, { desc = 'Stop neotest' })
vim.keymap.set('n', '<leader>nd', function()
  require('neotest').run.run { strategy = 'dap' }
end, { desc = 'Debug nearest test' })
vim.keymap.set('n', '<leader>nf', function()
  require('neotest').run.run(vim.fn.expand '%')
end, { desc = 'Run current file' })
vim.keymap.set('n', '<leader>na', function()
  require('neotest').run.run { suite = true }
end, { desc = 'Run all tests' })
vim.keymap.set('n', '<leader>nv', function()
  require('neotest').summary.toggle()
end, { desc = 'Toggle summary' })
vim.keymap.set('n', '<leader>np', function()
  require('neotest').output_panel.toggle()
end, { desc = 'Toggle output panel' })
vim.keymap.set('n', '<leader>no', function()
  require('neotest').output.open()
end, { desc = 'Show test output' })
vim.keymap.set('n', '<leader>nw', function()
  require('neotest').watch.toggle(vim.fn.expand '%')
end, { desc = 'Toggle watching file' })

vim.keymap.set('n', '<leader>tk', function()
  if vim.o.background == 'dark' then
    vim.o.background = 'light'
  else
    vim.o.background = 'dark'
  end
end, { desc = 'Toggle background' })
