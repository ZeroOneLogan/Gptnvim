-- ╔════════════════════════════════════════════════════════════╗
-- ║                     Core Options                           ║
-- ╚════════════════════════════════════════════════════════════╝

local opt = vim.opt
local g = vim.g

-- Leader keys (set early)
g.mapleader = " "
g.maplocalleader = ","

-- ═══════════════════════════════════════════════════════════════
-- UI & Appearance
-- ═══════════════════════════════════════════════════════════════
opt.number = true -- Show line numbers
opt.relativenumber = true -- Relative line numbers
opt.signcolumn = "yes" -- Always show sign column
opt.cursorline = true -- Highlight current line
opt.termguicolors = true -- True color support
opt.showmode = false -- Don't show mode (statusline does this)
opt.wrap = false -- No line wrapping
opt.pumheight = 15 -- Popup menu height
opt.pumblend = 10 -- Popup transparency
opt.winblend = 10 -- Window transparency
opt.scrolloff = 8 -- Lines to keep above/below cursor
opt.sidescrolloff = 8 -- Columns to keep left/right of cursor
opt.fillchars = {
  fold = " ",
  foldopen = "",
  foldclose = "",
  foldsep = " ",
  diff = "╱",
  eob = " ",
}
opt.list = true -- Show invisible characters
opt.listchars = {
  tab = "→ ",
  trail = "·",
  nbsp = "␣",
  extends = "›",
  precedes = "‹",
}

-- ═══════════════════════════════════════════════════════════════
-- Editing & Indentation
-- ═══════════════════════════════════════════════════════════════
opt.expandtab = true -- Use spaces instead of tabs
opt.shiftwidth = 2 -- Indent size
opt.tabstop = 2 -- Tab size
opt.softtabstop = 2 -- Soft tab size
opt.smartindent = true -- Smart indenting
opt.autoindent = true -- Auto indent
opt.breakindent = true -- Wrapped lines maintain indent

-- ═══════════════════════════════════════════════════════════════
-- Search & Replace
-- ═══════════════════════════════════════════════════════════════
opt.ignorecase = true -- Ignore case in search
opt.smartcase = true -- Override ignorecase if uppercase in search
opt.hlsearch = true -- Highlight search results
opt.incsearch = true -- Incremental search
opt.inccommand = "split" -- Preview substitutions

-- ═══════════════════════════════════════════════════════════════
-- Files & Buffers
-- ═══════════════════════════════════════════════════════════════
opt.undofile = true -- Persistent undo
opt.swapfile = false -- No swap files
opt.backup = false -- No backup files
opt.writebackup = false -- No backup before write
opt.autoread = true -- Auto read file changes
opt.hidden = true -- Allow hidden buffers

-- ═══════════════════════════════════════════════════════════════
-- Completion
-- ═══════════════════════════════════════════════════════════════
opt.completeopt = "menu,menuone,noselect" -- Completion options
opt.shortmess:append("c") -- Don't show completion messages

-- ═══════════════════════════════════════════════════════════════
-- Performance
-- ═══════════════════════════════════════════════════════════════
opt.updatetime = 250 -- Faster completion
opt.timeoutlen = 300 -- Faster key sequences
opt.lazyredraw = false -- Don't redraw during macros
opt.synmaxcol = 240 -- Max column for syntax highlight

-- ═══════════════════════════════════════════════════════════════
-- Splits & Windows
-- ═══════════════════════════════════════════════════════════════
opt.splitright = true -- Vertical splits to the right
opt.splitbelow = true -- Horizontal splits below
opt.splitkeep = "screen" -- Keep screen position on splits

-- ═══════════════════════════════════════════════════════════════
-- Mouse & Clipboard
-- ═══════════════════════════════════════════════════════════════
opt.mouse = "a" -- Enable mouse
opt.clipboard = "unnamedplus" -- Use system clipboard

-- ═══════════════════════════════════════════════════════════════
-- Folding
-- ═══════════════════════════════════════════════════════════════
opt.foldmethod = "expr" -- Use expression for folding
opt.foldexpr = "nvim_treesitter#foldexpr()" -- Use treesitter
opt.foldlevel = 99 -- Open all folds by default
opt.foldlevelstart = 99
opt.foldenable = true

-- ═══════════════════════════════════════════════════════════════
-- Grep & External Programs
-- ═══════════════════════════════════════════════════════════════
if vim.fn.executable("rg") == 1 then
  opt.grepprg = "rg --vimgrep --no-heading --smart-case"
  opt.grepformat = "%f:%l:%c:%m"
end

-- ═══════════════════════════════════════════════════════════════
-- Spell Checking
-- ═══════════════════════════════════════════════════════════════
opt.spell = false -- Disabled by default
opt.spelllang = { "en_us" }

-- ═══════════════════════════════════════════════════════════════
-- Misc
-- ═══════════════════════════════════════════════════════════════
opt.confirm = true -- Confirm before quitting unsaved
opt.virtualedit = "block" -- Allow cursor beyond line in visual block
opt.formatoptions = "jcroqlnt" -- Format options
opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize", "help", "globals", "skiprtp", "folds" }

-- Disable some built-in plugins
g.loaded_netrwPlugin = 1
g.loaded_netrw = 1
g.loaded_netrwSettings = 1
g.loaded_netrwFileHandlers = 1

-- ═══════════════════════════════════════════════════════════════
-- Provider Settings
-- ═══════════════════════════════════════════════════════════════
g.python3_host_prog = vim.fn.exepath("python3")
g.node_host_prog = vim.fn.exepath("neovim-node-host")
