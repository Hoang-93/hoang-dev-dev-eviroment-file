# Neovim Config cho Fullstack JavaScript/TypeScript Development

Config này được tối ưu cho việc code JavaScript/TypeScript từ frontend đến backend với React, Next.js, NestJS.

## Cài đặt

### 1. Backup config cũ (nếu có)
```bash
mv ~/.config/nvim ~/.config/nvim.backup
```

### 2. Clone/Copy config này
```bash
# Giải nén file zip vào ~/.config/nvim
# Hoặc copy thư mục nvim-config vào ~/.config/nvim
```

### 3. Cài đặt dependencies

#### Neovim (tối thiểu version 0.9.0)
```bash
# Ubuntu/Debian
sudo apt install neovim

# MacOS
brew install neovim

# Windows (chocolatey)
choco install neovim
```

#### Node.js và npm
```bash
# Ubuntu/Debian
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt-get install -y nodejs

# MacOS
brew install node

# Windows
# Download từ https://nodejs.org
```

#### Ripgrep (cho telescope live grep)
```bash
# Ubuntu/Debian
sudo apt install ripgrep

# MacOS
brew install ripgrep

# Windows
choco install ripgrep
```

#### Git
```bash
# Ubuntu/Debian
sudo apt install git

# MacOS
brew install git
```

### 4. Cài các LSP servers
```bash
npm install -g typescript typescript-language-server
npm install -g vscode-langservers-extracted  # HTML, CSS, JSON
npm install -g @tailwindcss/language-server
```

### 5. Khởi động Neovim
```bash
nvim
```

Lần đầu tiên mở sẽ tự động cài đặt tất cả plugins. Chờ cho đến khi hoàn tất.

### 6. Kiểm tra health
```vim
:checkhealth
```

## Cấu trúc thư mục

```
~/.config/nvim/
├── init.lua                    # Entry point
├── lua/
│   ├── config/
│   │   ├── options.lua        # Vim options
│   │   ├── keymaps.lua        # Key mappings
│   │   └── lazy.lua           # Plugin manager setup
│   └── plugins/
│       ├── colorscheme.lua    # Theme
│       ├── treesitter.lua     # Syntax highlighting
│       ├── lsp.lua            # Language servers
│       ├── cmp.lua            # Autocompletion
│       ├── telescope.lua      # Fuzzy finder
│       ├── neo-tree.lua       # File explorer
│       ├── lualine.lua        # Status line
│       └── others.lua         # Các plugins khác
```

## Keybindings chính

### General
- `<Space>` - Leader key
- `<Ctrl-s>` - Save file
- `<Esc>` - Clear search highlight

### Window Navigation
- `<Ctrl-h>` - Go to left window
- `<Ctrl-j>` - Go to down window
- `<Ctrl-k>` - Go to up window
- `<Ctrl-l>` - Go to right window

### Buffer Navigation
- `<Shift-h>` - Previous buffer
- `<Shift-l>` - Next buffer
- `<Space>bd` - Delete buffer

### File Explorer (Neo-tree)
- `<Space>e` - Toggle file explorer
- `<Space>o` - Focus file explorer

### Fuzzy Finder (Telescope)
- `<Space>ff` - Find files
- `<Space>fg` - Live grep (search text)
- `<Space>fb` - Find buffers
- `<Space>fh` - Help tags
- `<Space>fo` - Recent files

### LSP
- `gd` - Go to definition
- `K` - Hover documentation
- `gi` - Go to implementation
- `gr` - Find references
- `<Space>rn` - Rename
- `<Space>ca` - Code action

### Completion (trong insert mode)
- `<Ctrl-Space>` - Trigger completion
- `<Tab>` - Next item / expand snippet
- `<Shift-Tab>` - Previous item
- `<Enter>` - Confirm selection

### Terminal
- `<Ctrl-\>` - Toggle terminal

### Comment
- `gcc` - Comment/uncomment line
- `gc` - Comment/uncomment selection (visual mode)

### Editing
- `<` / `>` - Indent left/right (visual mode)
- `J` / `K` - Move line down/up (visual mode)

## Plugins được cài

### Core
- **lazy.nvim** - Plugin manager
- **catppuccin** - Color scheme
- **nvim-treesitter** - Syntax highlighting
- **nvim-lspconfig** - LSP configuration
- **mason.nvim** - LSP/DAP/Linter installer

### Completion
- **nvim-cmp** - Completion engine
- **LuaSnip** - Snippet engine
- **friendly-snippets** - Snippet collection

### UI
- **telescope.nvim** - Fuzzy finder
- **neo-tree.nvim** - File explorer
- **lualine.nvim** - Status line
- **bufferline.nvim** - Buffer/tab line
- **which-key.nvim** - Key binding helper

### Editor Enhancement
- **nvim-autopairs** - Auto close brackets
- **Comment.nvim** - Easy commenting
- **nvim-surround** - Surround text objects
- **gitsigns.nvim** - Git integration
- **toggleterm.nvim** - Terminal
- **indent-blankline.nvim** - Indent guides
- **nvim-colorizer.lua** - Color highlighter

### Web Development
- **nvim-ts-autotag** - Auto close HTML tags
- **tailwindcss-language-server** - Tailwind CSS support

## Troubleshooting

### Plugins không tự động cài
```vim
:Lazy sync
```

### LSP không hoạt động
```vim
:Mason
# Sau đó install các LSP servers cần thiết
```

### Treesitter lỗi
```vim
:TSUpdate
```

### Clear cache
```bash
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim
```

## Tùy chỉnh

Để thay đổi theme, edit file `lua/plugins/colorscheme.lua`

Để thêm/bớt plugins, edit các file trong `lua/plugins/`

Để thay đổi keybindings, edit file `lua/config/keymaps.lua`

## Các lệnh hữu ích

```vim
:Lazy           " Quản lý plugins
:Mason          " Quản lý LSP servers
:checkhealth    " Kiểm tra cấu hình
:LspInfo        " Thông tin LSP
:TSUpdate       " Update treesitter parsers
```

## Support

Nếu có vấn đề, check:
1. `:checkhealth`
2. `:Lazy` để xem plugins đã cài đúng chưa
3. `:LspInfo` để xem LSP có hoạt động không
