-- set leader key to space
vim.g.mapleader = " "

local function map(m, k, v)
  vim.api.nvim_set_keymap(m, k, v, { silent = true })
end

---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
map("i", "jk", "<ESC>")

-- clear search highlights
map("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
map("n", "x", '"_x')

-- increment/decrement numbers
map("n", "<leader>+", "<C-a>") -- increment
map("n", "<leader>-", "<C-x>") -- decrement

-- window management
map("n", "<leader>sv", "<C-w>v") -- split window vertically
map("n", "<leader>sh", "<C-w>s") -- split window horizontally
map("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
map("n", "<leader>sx", ":close<CR>") -- close current split window

map("n", "<leader>to", ":tabnew<CR>") -- open new tab
map("n", "<leader>tx", ":tabclose<CR>") -- close current tab
map("n", "<leader>tn", ":tabn<CR>") --  go to next tab
map("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- Prev/Next Diagnostic
map('n', '<leader>pd', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
map('n', '<leader>nd', '<cmd>lua vim.diagnostic.goto_next()<CR>')
----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
map("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
map("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer
map("n", "<leader>a", ":NvimTreeFocus<CR>") -- focus file explorer

-- lsp-zero
map("n", "<leader>p", ":LspZeroFormat<CR>") -- toggle file explorer

-- telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
map("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
map("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands (not on youtube nvim video)
map("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
map("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
map("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
map("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server (not on youtube nvim video)
map("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary
