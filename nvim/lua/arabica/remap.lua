
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>db", ":lua require('dap').continue()<CR>");
vim.keymap.set("n", "<leader>b", ":lua require('dap').toggle_breakpoint()<CR>");
vim.keymap.set("n", "<leader>bc", ":lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>");
--nnoremap <silent> <leader>db :lua require('dap-python').continue()<CR>
--nnoremap <silent> <leader>bp :lua require('dap-python').toggle_breakppoint()<CR>
vim.keymap.set('n', '<F5>', require 'dap'.continue)
vim.keymap.set('n', '<leader>8', require 'dap'.step_over)
vim.keymap.set('n', '<leader>9', require 'dap'.step_into)
vim.keymap.set('n', '<leader>0', require 'dap'.step_out)
vim.keymap.set('n', '<leader>s', function()
    require 'dap'.close()
    require 'dapui'.close()
end )
--vim.keymap.set('n', '<leader>b', require 'dap'.toggle_breakpoint)
