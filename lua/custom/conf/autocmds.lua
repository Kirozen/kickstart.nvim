-- vim.api.nvim_create_autocmd('VimEnter', {
--   callback = function()
--     local buffers = vim.fn.getbufinfo { buflisted = 1 }
--     if #buffers > 1 then
--       vim.cmd 'Neotree'
--     end
--   end,
-- })

-- Default background
vim.o.background = 'light'
