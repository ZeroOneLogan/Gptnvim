# 📋 Features Overview

A detailed breakdown of all features included in Gptnvim.

## 🎨 UI Components

### Dashboard (Alpha)
- Custom ASCII art logo
- Quick access buttons
- Recent files display
- Startup time statistics
- Session restoration

### Statusline (Lualine)
- Current mode indicator
- Git branch display
- Diagnostics summary
- File information with icons
- Location and progress
- Time display
- Custom segments for Noice integration

### Bufferline
- Visual buffer tabs
- Close buttons
- Diagnostics indicators
- Pin/unpin buffers
- Group management
- Mouse support
- Icons and highlights

### File Explorer (Neo-tree)
- Filesystem view
- Buffer list view
- Git status view
- Document symbols view
- File operations (copy, move, delete, rename)
- Preview mode
- Git integration
- Custom mappings

### Notifications (nvim-notify)
- Beautiful toast notifications
- Progress indicators
- History view
- Dismissable alerts
- Custom styling

### Command Line (Noice)
- Enhanced cmdline UI
- Better messages
- Signature help in cmdline
- Search count display
- Progress notifications
- LSP progress indicators

## 🔍 Search & Navigation

### Telescope
**Pickers:**
- File finder with hidden files support
- Live grep with ripgrep
- Buffer finder
- Recent files
- Help tags
- Keymaps browser
- Commands palette
- Vim options search
- Marks browser
- Jumplist navigator
- Quickfix/Location list
- Git commits/branches/status
- Treesitter symbols
- Diagnostics
- Notifications history
- Projects

**Features:**
- Fuzzy matching
- Preview window
- Multi-select
- Custom actions
- Extension support
- Smart filtering

### File Navigation
- Neo-tree file explorer
- Telescope file finder
- Oil.nvim (optional)
- Project-based navigation
- Recent files tracking
- Buffer management

### Code Navigation
- LSP go to definition
- Find references
- Type definitions
- Implementation finder
- Symbol search (document & workspace)
- Treesitter text objects
- Jump to diagnostic
- Leap motion
- Marks navigation

## 💻 Language Support

### LSP (Language Server Protocol)
**Pre-configured servers:**
- Lua (lua_ls)
- TypeScript/JavaScript (tsserver)
- Python (pyright)
- Rust (rust_analyzer)
- Go (gopls)
- HTML/CSS (html, cssls)
- JSON (jsonls)
- YAML (yamlls)
- Bash (bashls)
- Docker (dockerls)
- Markdown (marksman)

**Features:**
- Automatic server installation via Mason
- Hover documentation
- Signature help
- Go to definition/references/implementation
- Rename symbol
- Code actions
- Diagnostics
- Inlay hints
- Code lens
- Document symbols
- Workspace symbols
- Format on save
- Auto-import

### Treesitter
**Languages:**
50+ languages including:
- Bash, C, C++, CSS, Diff, Dockerfile
- Git, Go, GraphQL, HTML, Java
- JavaScript, JSON, Lua, Markdown
- Python, Regex, Rust, TOML, TypeScript
- Vim, YAML, and more

**Features:**
- Syntax highlighting
- Indentation
- Folding
- Text objects
- Context display
- Incremental selection
- Code navigation
- Auto-tagging (HTML/XML)

### Completion (nvim-cmp)
**Sources:**
- LSP completion
- Buffer words
- File paths
- Command line
- Snippets (LuaSnip)

**Features:**
- Intelligent suggestions
- Icons with lspkind
- Ghost text preview
- Documentation preview
- Custom sorting
- Snippet expansion
- Tab completion

### Snippets (LuaSnip)
- Friendly snippets collection
- Custom snippet support
- Tab/Shift-Tab navigation
- Visual placeholders
- Dynamic snippets
- Choice nodes

## 🐛 Debugging (DAP)

### Debuggers
Pre-configured for:
- Python
- Node.js
- Chrome/Firefox
- Many more via Mason

### Features
- Breakpoints (conditional, log points)
- Step through code
- Variable inspection
- Watch expressions
- REPL
- Call stack navigation
- UI with multiple layouts
- Virtual text for variables
- Hover evaluation
- Auto UI open/close

### UI Components
- Scopes viewer
- Breakpoints list
- Stack trace
- Watch window
- REPL console
- Controls bar

## 🔀 Git Integration

### Gitsigns
- Line status indicators
- Stage/unstage hunks
- Preview hunks
- Navigate between hunks
- Blame line
- Diff view
- Word diff
- Deleted lines indicator

### Fugitive
- Git status
- Git diff
- Git log
- Git blame
- Git push/pull
- Conflict resolution
- Branch management

### Diffview
- File diff view
- Merge conflict view
- File history
- Multiple diff layouts
- Enhanced diff highlighting

### Git Conflict
- Visual conflict markers
- Choose ours/theirs/both
- Navigation between conflicts
- Quick resolution

## ✨ Formatting & Linting

### Formatting (Conform)
**Formatters:**
- Lua: stylua
- Python: black, isort
- JavaScript/TypeScript: prettier/prettierd
- JSON/YAML/Markdown: prettier
- Shell: shfmt
- Rust: rustfmt
- Go: gofmt, goimports

**Features:**
- Format on save
- Manual formatting
- Multiple formatters per filetype
- LSP fallback
- Toggle formatting
- Buffer/global toggle

### Linting (nvim-lint)
**Linters:**
- JavaScript/TypeScript: eslint_d
- Python: pylint
- Markdown: markdownlint
- Docker: hadolint
- YAML: yamllint
- Shell: shellcheck

**Features:**
- Automatic linting
- Lint on save
- Lint on change
- Manual trigger
- Integration with diagnostics

## 🎯 Editor Features

### Text Manipulation
- Auto-pairs for brackets/quotes
- Surround operations (ys, ds, cs)
- Comment toggle (gcc, gc)
- Multi-line editing
- Text objects (function, class, parameter)
- Better increment/decrement (dial)
- Line moving (visual mode J/K)

### Search & Replace
- Fuzzy search in buffer
- Project-wide search (Telescope)
- Search and replace (spectre)
- Word under cursor highlight
- Clear search highlight

### Visual Enhancements
- Indent guides
- Color highlighting (#hex, rgb)
- Cursor line highlight
- Match highlighting
- Todo comment highlighting
- Git change indicators
- Diagnostic signs
- Folding indicators

### Window Management
- Easy window navigation (C-hjkl)
- Window resizing (arrow keys)
- Split management
- Focus mode
- Zen mode
- Auto-resize on vim resize
- Terminal in splits/float

### Buffer Management
- Buffer list (bufferline)
- Buffer navigation (S-h/l)
- Buffer close commands
- Pin buffers
- Close others/left/right
- Better buffer delete

### Session Management
- Auto-save sessions
- Restore last session
- Project-based sessions
- Custom session directory
- Session picker

## 🛠️ Utilities

### Terminal (ToggleTerm)
- Float terminal
- Horizontal terminal
- Vertical terminal
- Multiple terminals
- Terminal navigation
- Persistent terminals
- Integration with lazygit

### Project Management
- Auto-detect projects
- Project switching
- Project-specific settings
- Telescope integration
- Recent projects

### Marks
- Visual mark indicators
- Mark navigation
- Bookmark system
- Sign priority

### Quickfix/Location List
- Enhanced quickfix (nvim-bqf)
- Preview window
- FZF filtering
- Better navigation
- Custom mappings

### Markdown
- Preview in browser
- GitHub-flavored markdown
- Live update
- Code syntax highlighting

### Diagnostics
- Trouble for diagnostics list
- Virtual text
- Signs in gutter
- Floating window
- Quickfix integration
- Severity filtering
- Workspace diagnostics

### Todo Comments
- Highlight TODO, FIXME, etc.
- Telescope integration
- Jump to next/prev
- List all todos
- Trouble integration

## ⚡ Performance

### Optimization Features
- Lazy plugin loading
- Event-driven activation
- Disabled unused built-ins
- Compiled queries (Treesitter)
- Cached modules (impatient)
- Fast filetype detection
- Efficient syntax limiting
- Background updates

### Startup Enhancements
- Optimized runtimepath
- Minimal initial plugins
- Deferred loading
- Smart dependencies
- Plugin profiling
- Startup time tracking

## 🎮 Keybindings

### Philosophy
- Space as leader (most common)
- Logical grouping (all git under `<leader>g`)
- Mnemonic keys (ff = find files)
- Which-key integration
- No conflicts with Vim defaults
- Terminal-friendly

### Organization
- `<leader>f` - Find (Telescope)
- `<leader>g` - Git
- `<leader>b` - Buffer
- `<leader>c` - Code/LSP
- `<leader>d` - Debug
- `<leader>t` - Toggle/Terminal
- `<leader>s` - Search/Split
- `<leader>x` - Diagnostics/Quickfix
- `<leader>w` - Workspace
- `<leader>q` - Quit/Session

## 🎨 Themes

### Included
- Tokyo Night (default)
  - Night
  - Storm
  - Day
- Catppuccin
  - Mocha
  - Macchiato
  - Frappe
  - Latte

### Features
- True color support
- Transparent backgrounds (optional)
- Custom highlights
- Integration with all plugins
- Consistent UI theming

## 🔌 Extensibility

### Plugin System
- Lazy.nvim package manager
- Hot reloading
- Lazy loading
- Version management
- Update notifications
- Plugin profiles

### Customization
- Modular config structure
- Easy to add plugins
- Override any setting
- Custom keymaps
- Personal snippets
- Theme customization
- LSP configuration

### Integration
- All plugins work together
- Consistent UI
- Shared keybindings
- Cross-plugin features
- Unified experience

---

## 📦 Complete Plugin List

See `lua/plugins/` directory for full list and configurations.

**Total Plugins: 60+**

Categories:
- Core: 5
- UI: 12
- Editor: 15
- LSP: 5
- Git: 5
- Formatting: 2
- Debugging: 4
- Utilities: 12+

---

*For detailed configuration, see individual plugin files in `lua/plugins/`*
