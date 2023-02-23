syntax on set splitbelow splitright
set nocp " No Vi compatibleness
set nois " incomplete search support
set nowrap " No Line Wrap  Support
set laststatus=2 "Bottom Bar Enabled
set title "Title Enabled 
set mouse= " No mouse support
set smartindent " Do smart indenting
set softtabstop=4 " Tab Width
set smarttab "Insert Tabs Intelligently
set tabstop=4 "more tab stuff
set noswapfile "No annoying backup files
set encoding=utf-8 "Sets encoding
set cursorline
:highlight cursorline ctermbg=black cterm=none
set smartcase
set hlsearch
filetype on
filetype plugin on
filetype indent on
set scrolloff=10
set history=10
set wildmenu
set nu rnu
set path=**
let g:netrw_banner=0
let g:netrw_liststyle=3
set complete=.,w,i,k
"set spell

" Remove newbie crutches in Normal Mode
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>
" Remove newbie crutches in Visual Mode
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <Up> <Nop>

colorscheme aqua

"Plugin Config
call plug#begin()
		Plug 'nvim-lualine/lualine.nvim'
call plug#end()
lua << END
local c16c = require'lualine.themes.16color'

c16c.normal.c.bg = '#222222'
require('lualine').setup {
  options = {
    icons_enabled = false,
    theme = c16c,
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
END
