-- Line Numbers
vim.opt.number = true

vim.g.mapleader = " "
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true

local function send_tmux_command(command)
  vim.fn.system("tmux " .. command)
end

-- Keymaps for switching tmux windows

vim.keymap.set("n", "<C-a>0", function() send_tmux_command("select-window -t 1") end, { desc = "Tmux: Window 1" })
vim.keymap.set("n", "<C-a>1", function() send_tmux_command("select-window -t 2") end, { desc = "Tmux: Window 2" })
vim.keymap.set("n", "<C-a>n", function() send_tmux_command("select-window -t +") end, { desc = "Tmux: Next window" })
vim.keymap.set("n", "<C-a>p", function() send_tmux_command("select-window -t -") end, { desc = "Tmux: Previous window" })




