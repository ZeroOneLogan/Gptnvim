-- ╔════════════════════════════════════════════════════════════╗
-- ║                     Autocommands                           ║
-- ╚════════════════════════════════════════════════════════════╝

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- ═══════════════════════════════════════════════════════════════
-- General Settings
-- ═══════════════════════════════════════════════════════════════
local general = augroup("General", { clear = true })

-- Highlight yanked text
autocmd("TextYankPost", {
  group = general,
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({ timeout = 200 })
  end,
  desc = "Highlight on yank",
})

-- Remove trailing whitespace on save
autocmd("BufWritePre", {
  group = general,
  pattern = "*",
  callback = function()
    local save_cursor = vim.fn.getpos(".")
    vim.cmd([[%s/\s\+$//e]])
    vim.fn.setpos(".", save_cursor)
  end,
  desc = "Remove trailing whitespace",
})

-- Auto-create directory when saving file
autocmd("BufWritePre", {
  group = general,
  pattern = "*",
  callback = function(event)
    if event.match:match("^%w%w+://") then
      return
    end
    local file = vim.loop.fs_realpath(event.match) or event.match
    vim.fn.mkdir(vim.fn.fnamemodify(file, ":p:h"), "p")
  end,
  desc = "Auto-create directory",
})

-- Return to last edit position when opening files
autocmd("BufReadPost", {
  group = general,
  pattern = "*",
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
  desc = "Go to last location",
})

-- Close certain filetypes with 'q'
autocmd("FileType", {
  group = general,
  pattern = {
    "qf",
    "help",
    "man",
    "notify",
    "lspinfo",
    "spectre_panel",
    "startuptime",
    "tsplayground",
    "PlenaryTestPopup",
  },
  callback = function(event)
    vim.bo[event.buf].buflisted = false
    vim.keymap.set("n", "q", "<cmd>close<cr>", { buffer = event.buf, silent = true })
  end,
  desc = "Close with 'q'",
})

-- ═══════════════════════════════════════════════════════════════
-- File-Type Specific Settings
-- ═══════════════════════════════════════════════════════════════
local filetype = augroup("FileTypeSettings", { clear = true })

-- Set wrap and spell for text files
autocmd("FileType", {
  group = filetype,
  pattern = { "gitcommit", "markdown", "text" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.spell = true
  end,
  desc = "Enable wrap and spell for text files",
})

-- JSON with comments
autocmd({ "BufRead", "BufNewFile" }, {
  group = filetype,
  pattern = { "*.jsonc", ".eslintrc", "tsconfig.json" },
  command = "set filetype=jsonc",
  desc = "Set JSONC filetype",
})

-- ═══════════════════════════════════════════════════════════════
-- Performance Optimizations
-- ═══════════════════════════════════════════════════════════════
local performance = augroup("Performance", { clear = true })

-- Disable syntax highlighting for large files
autocmd("BufReadPre", {
  group = performance,
  pattern = "*",
  callback = function()
    local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(0))
    if ok and stats and stats.size > 100000 then
      vim.cmd("syntax clear")
    end
  end,
  desc = "Disable syntax for large files",
})

-- ═══════════════════════════════════════════════════════════════
-- Terminal Settings
-- ═══════════════════════════════════════════════════════════════
local terminal = augroup("Terminal", { clear = true })

-- Start terminal in insert mode
autocmd("TermOpen", {
  group = terminal,
  pattern = "*",
  command = "startinsert",
  desc = "Start terminal in insert mode",
})

-- Disable line numbers in terminal
autocmd("TermOpen", {
  group = terminal,
  pattern = "*",
  callback = function()
    vim.opt_local.number = false
    vim.opt_local.relativenumber = false
    vim.opt_local.signcolumn = "no"
  end,
  desc = "Disable line numbers in terminal",
})

-- ═══════════════════════════════════════════════════════════════
-- Window Management
-- ═══════════════════════════════════════════════════════════════
local windows = augroup("Windows", { clear = true })

-- Auto-resize splits when vim is resized
autocmd("VimResized", {
  group = windows,
  pattern = "*",
  command = "tabdo wincmd =",
  desc = "Auto-resize splits",
})

-- Check if file has changed outside of vim
autocmd({ "FocusGained", "TermClose", "TermLeave" }, {
  group = windows,
  command = "checktime",
  desc = "Check for external file changes",
})
