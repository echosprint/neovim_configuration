# Neovim Configuration Usage Guide

## Overview
This Neovim configuration provides a clean, performant setup with essential plugins for modern development workflow.

## Leader Key
- **Leader**: `<Space>` (spacebar)

## File Operations

### Basic File Commands
- `<leader>w` - Save file
- `<leader>s` - Save file (alternative)
- `<leader>q` - Force quit
- `<leader>h` - Clear search highlights

### Quick Editing
- `jk` - Exit insert mode (alternative to `<Esc>`)

## File Explorer (Nvim-tree)
- `<Space>e` - Toggle file explorer

### File Explorer Features:
- Git integration with file status indicators
- Icons for different file types
- Automatic close when opening files
- Filter out common unnecessary files (`.git`, `node_modules`)

## Fuzzy Finding (Telescope)

### File Search
- `<leader>ff` - Find files by name
- `<Space><Space>` - Find files (quick access)
- `<leader>ft` - Live grep (search text content)
- `<leader>fb` - Find open buffers

### Telescope Navigation
- `<C-j>` - Move down in results
- `<C-k>` - Move up in results
- `<C-q>` - Send results to quickfix list
- `<Enter>` - Open selected file

## Buffer Management

### Buffer Navigation
- `<S-l>` - Next buffer
- `<S-h>` - Previous buffer

### Buffer Features
- Visual buffer tabs at the top
- Modified indicators
- Git status integration
- Easy buffer switching

## Git Integration (Gitsigns)

### Quick Git Actions
- `<leader>p` - **Preview hunk** (fast access to see changes)
- `]c` - Next git hunk
- `[c` - Previous git hunk

### Git Operations
- `<leader>gs` - Stage hunk
- `<leader>gr` - Reset hunk
- `<leader>gS` - Stage entire buffer
- `<leader>gu` - Undo stage hunk
- `<leader>gR` - Reset entire buffer

### Git Information
- `<leader>gp` - Preview hunk (detailed)
- `<leader>gh` - Preview hunk (alternative)
- `<leader>gb` - Blame current line
- `<leader>gB` - Full blame information
- `<leader>gd` - Diff current file
- `<leader>gD` - Diff against HEAD~

### Git Toggles
- `<leader>tgb` - Toggle line blame display
- `<leader>tgd` - Toggle deleted lines display

### Git Visual Indicators
- `│` - Added lines (green)
- `~` - Changed lines (yellow)
- `_` - Deleted lines (red)

### Git Text Objects
- `ih` - Select hunk (in visual/operator mode)

## Commenting
- `<leader>/` - Toggle line comment
- `<leader>c` - Toggle line comment (alternative)
- Works in both normal and visual mode

## Syntax Highlighting (Treesitter)

### Supported Languages
- Python, Lua, Vim, JavaScript, TypeScript, TSX
- HTML, CSS, JSON, YAML, TOML
- Markdown, Bash, Go, Rust, C, C++

### Features
- Advanced syntax highlighting
- Smart indentation
- Code folding support

## Auto-completion Features
- **Auto-pairs**: Automatically closes brackets, quotes, etc.
- **Smart commenting**: Context-aware commenting
- **Indent guides**: Visual indentation lines

## Color Scheme
- **Primary**: Gruvbox (dark theme)
- **Alternative**: Darkplus (commented out)
- Optimized for terminal use

## Performance Features
- Optimized for smooth window resizing
- Reduced flickering and lag
- Smart redraw management
- Git operations debounced for performance

## Plugin Management
Using Packer.nvim for plugin management:
- Automatic plugin installation on first run
- Easy plugin updates and management

## Tips for Effective Usage

### Workflow Recommendations
1. Use `<Space><Space>` for quick file access
2. Use `<leader>p` to quickly preview git changes
3. Use `]c` and `[c` to navigate through git changes
4. Use `<leader>ft` to search for text across your project
5. Use `<S-l>` and `<S-h>` to switch between open files

### Git Workflow
1. Navigate to changed lines with `]c`/`[c`
2. Preview changes with `<leader>p`
3. Stage individual hunks with `<leader>gs`
4. Stage entire file with `<leader>gS`

### File Management
1. Open file explorer with `<Space>e`
2. Use Telescope for fuzzy finding: `<leader>ff`
3. Switch between buffers: `<S-l>`/`<S-h>`
4. Search across files: `<leader>ft`

## Troubleshooting

### Common Issues
- If gitsigns shortcuts don't work, ensure you're in a git repository
- If Telescope is slow, it may be indexing large directories
- File explorer icons require a nerd font for proper display

### Performance
- Configuration optimized for smooth resizing
- Large files (>5000 lines) have reduced git integration
- Syntax highlighting limited to first 200 characters per line

## Customization
The configuration is modular and located in:
- `lua/core/options.lua` - Vim options
- `lua/core/keymaps.lua` - Key mappings
- `lua/core/plugins.lua` - Plugin definitions
- `lua/core/plugin_config/` - Individual plugin configurations

Feel free to modify any settings to match your workflow preferences!