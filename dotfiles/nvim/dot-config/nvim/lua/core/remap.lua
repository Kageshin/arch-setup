local map = vim.keymap.set

-- Open netrw
map("n", "<leader>pv", "<cmd>Ex<CR>", { desc = "open netrw" })

-- Insert Mode Movement
map("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
map("i", "<C-e>", "<End>", { desc = "move end of line" })
map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })

-- Split Window Movement
map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

-- General Settings
map("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear hightlights" })
map("n", "<C-s>", "<cmd>w<CR>", { desc = "general save file" })
map("n", "<C-c>", "<cmd>%y+<CR>", { desc = "general copy whole file" })

-- Toggle
map("n", "<leader>n", "<cmd>set nu!<CR>", { desc = "toggle line number" })
map("n", "<leader>rn", "<cmd>set rnu!<CR>", { desc = "toggle relative number" })

-- Comment
map("n", "<leader>/", "gcc", { desc = "toggle comment", remap = true })
map("v", "<leader>/", "gc", { desc = "toggle comment", remap = true })

-- Buffer
map("n", "<leader>b", "<cmd>enew<CR>", { desc = "buffer new" })

-- Diagnostics
map("n", "<leader>dd", "<cmd>lua vim.diagnostic.open_float()<CR>", { desc = "toggle diagnostic" })
map("n", "<leader>dj", "<cmd>lua vim.diagnostic.goto_next()<CR>", { desc = "goto next diagnostic" })
map("n", "<leader>dk", "<cmd>lua vim.diagnostic.goto_prev()<CR>", { desc = "goto prev diagnostic" })
