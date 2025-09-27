-- Line Numbers
vim.opt.number = true
vim.opt.relativenumber = true

vim.g.mapleader = " "
vim.opt.expandtab = false 
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.updatetime = 50

local function send_tmux_command(command)
  vim.fn.system("tmux " .. command)
end

-- Keymaps for switching tmux windows

vim.keymap.set("n", "<C-a>0", function() send_tmux_command("select-window -t 1") end, { desc = "Tmux: Window 1" })
vim.keymap.set("n", "<C-a>1", function() send_tmux_command("select-window -t 2") end, { desc = "Tmux: Window 2" })
vim.keymap.set("n", "<C-a>n", function() send_tmux_command("select-window -t +") end, { desc = "Tmux: Next window" })
vim.keymap.set("n", "<C-a>p", function() send_tmux_command("select-window -t -") end, { desc = "Tmux: Previous window" })


--File Explorer
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

--Search
vim.opt.hlsearch = false
vim.opt.incsearch = true

--remaps
vim.keymap.set("v", "J",":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K",":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<C-d>","<C-d>zz")
vim.keymap.set("n", "<C-u>","<C-u>zz")
vim.keymap.set("x", "<leader>p","\"_dP")

