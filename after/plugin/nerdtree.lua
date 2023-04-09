vim.keymap.set('n', '<leader>b', vim.cmd.NERDTreeToggle)
vim.keymap.set('n', '<C-f>', vim.cmd.NERDTreeFind)

-- Close the tab if NERDTree is the only window remaining in it.
vim.cmd[[
	autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
	" Open the existing NERDTree on each new tab.
	autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
]]
