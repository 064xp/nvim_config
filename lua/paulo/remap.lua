-- Apply colors
vim.keymap.set("n", "<leader>lc", ":lua Colors() <CR>")

-- Open netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move highlighted text up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep search results in the middle of the screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste without loosing yanked text
vim.keymap.set("x", "<leader>p", [["_dP]])

-- yank into clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Don't advance when press space in visual mode
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })

vim.keymap.set("n", "Q", "<nop>")

-- Buffers

-- Jump to next buffer
--vim.keymap.set('n', '<leader>bn', ':bnext<CR>', { noremap = true })
vim.keymap.set('n', '<C-k>', ':bnext<CR>', { noremap = true })

-- Jump to previous buffer
--vim.keymap.set('n', '<leader>bp', ':bprevious<CR>', { noremap = true })
vim.keymap.set('n', '<C-j>', ':bprevious<CR>', { noremap = true })

-- Delete current buffer
vim.keymap.set('n', '<C-x>', ':bp|bd#<CR>', { noremap = true })



-- Tabs
-- Jump to next tab
vim.keymap.set('n', '<leader>tn', ':tabnext<CR>', { noremap = true })

-- Jump to previous tab
vim.keymap.set('n', '<leader>tp', ':tabprevious<CR>', { noremap = true })

-- Close current tab
vim.keymap.set('n', '<leader>tc', ':tabclose<CR>', { noremap = true })

-- Create a new tab
vim.api.nvim_set_keymap('n', '<leader>ta', ':tabnew<CR>', { noremap = true })

-- Terminal
-- Open terminal at the bottom of the window
vim.keymap.set('n', '<leader>`', ':botright 10split | resize 10 | term <CR>', {noremap=true})
-- Exit terminal mode with escape
vim.keymap.set('t', '<Esc>', '<C-\\><C-n><C-w>k', { noremap = true })
-- Close terminal and delete buffer
vim.keymap.set('t', '<C-x>', '<C-\\><C-n>:bd!<CR>', { noremap = true })
