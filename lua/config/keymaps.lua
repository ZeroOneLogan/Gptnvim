-- ╔════════════════════════════════════════════════════════════╗
-- ║                     Core Keymaps                           ║
-- ╚════════════════════════════════════════════════════════════╝

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- ═══════════════════════════════════════════════════════════════
-- Better Navigation
-- ═══════════════════════════════════════════════════════════════
-- Move lines up/down in visual mode
keymap("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap("v", "K", ":m '<-2<CR>gv=gv", opts)

-- Keep cursor centered when scrolling
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize windows with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- ═══════════════════════════════════════════════════════════════
-- Buffer Management
-- ═══════════════════════════════════════════════════════════════
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<leader>bd", ":bdelete<CR>", opts)
keymap("n", "<leader>bD", ":bdelete!<CR>", opts)

-- ═══════════════════════════════════════════════════════════════
-- Split Management
-- ═══════════════════════════════════════════════════════════════
keymap("n", "<leader>sv", ":vsplit<CR>", opts)
keymap("n", "<leader>sh", ":split<CR>", opts)
keymap("n", "<leader>sx", ":close<CR>", opts)
keymap("n", "<leader>se", "<C-w>=", opts)

-- ═══════════════════════════════════════════════════════════════
-- Editing Helpers
-- ═══════════════════════════════════════════════════════════════
-- Better paste (don't yank replaced text)
keymap("x", "<leader>p", '"_dP', opts)

-- Delete to black hole register
keymap({ "n", "v" }, "<leader>d", '"_d', opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Better joining (keep cursor in place)
keymap("n", "J", "mzJ`z", opts)

-- ═══════════════════════════════════════════════════════════════
-- Search & Replace
-- ═══════════════════════════════════════════════════════════════
-- Clear search highlighting
keymap("n", "<Esc>", ":noh<CR>", opts)

-- Search and replace word under cursor
keymap("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Search and replace" })

-- ═══════════════════════════════════════════════════════════════
-- Quick Actions
-- ═══════════════════════════════════════════════════════════════
-- Save file
keymap("n", "<C-s>", ":w<CR>", opts)
keymap("i", "<C-s>", "<Esc>:w<CR>a", opts)

-- Quit
keymap("n", "<leader>qq", ":qa<CR>", opts)
keymap("n", "<leader>qQ", ":qa!<CR>", opts)

-- Source current file
keymap("n", "<leader><leader>x", ":source %<CR>", { desc = "Source file" })

-- ═══════════════════════════════════════════════════════════════
-- Quickfix & Location List
-- ═══════════════════════════════════════════════════════════════
keymap("n", "<leader>xq", ":copen<CR>", { desc = "Open quickfix" })
keymap("n", "<leader>xl", ":lopen<CR>", { desc = "Open location list" })
keymap("n", "[q", ":cprev<CR>", { desc = "Previous quickfix" })
keymap("n", "]q", ":cnext<CR>", { desc = "Next quickfix" })
keymap("n", "[l", ":lprev<CR>", { desc = "Previous location" })
keymap("n", "]l", ":lnext<CR>", { desc = "Next location" })

-- ═══════════════════════════════════════════════════════════════
-- Terminal
-- ═══════════════════════════════════════════════════════════════
keymap("t", "<Esc>", "<C-\\><C-n>", opts)
keymap("t", "<C-h>", "<C-\\><C-n><C-w>h", opts)
keymap("t", "<C-j>", "<C-\\><C-n><C-w>j", opts)
keymap("t", "<C-k>", "<C-\\><C-n><C-w>k", opts)
keymap("t", "<C-l>", "<C-\\><C-n><C-w>l", opts)

-- ═══════════════════════════════════════════════════════════════
-- Diagnostics
-- ═══════════════════════════════════════════════════════════════
keymap("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
keymap("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
keymap("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic" })
keymap("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Diagnostic list" })

-- ═══════════════════════════════════════════════════════════════
-- Utilities
-- ═══════════════════════════════════════════════════════════════
-- Better command-line history
keymap("c", "<C-p>", "<Up>", { noremap = true })
keymap("c", "<C-n>", "<Down>", { noremap = true })

-- Toggle options
keymap("n", "<leader>tw", ":set wrap!<CR>", { desc = "Toggle wrap" })
keymap("n", "<leader>ts", ":set spell!<CR>", { desc = "Toggle spell" })
keymap("n", "<leader>tn", ":set number! relativenumber!<CR>", { desc = "Toggle line numbers" })
