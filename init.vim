set exrc


call plug#begin('~/.config/nvim/plugged')
"UI theme
Plug 'preservim/nerdtree'
Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'dracula/vim', { 'name': 'dracula' }
Plug 'frazrepo/vim-rainbow'
Plug 'nvim-treesitter/nvim-treesitter'

"Coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"JavaScript
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

call plug#end()

set secure

if (has("termguicolors"))
 set termguicolors
endif
syntax enable
colorscheme dracula
"NerdTree
"let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
nnoremap <C-n> :NERDTreeToggle<CR>

"Tabs
nnoremap <C-p> :BufferNext<CR>
" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

"Rainbow brackeds
let g:rainbow_active =0
let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]

let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']


au BufEnter * if &buftype == 'terminal' | :startinsert | endif
function! OpenTerminal()
  split term://zsh
  resize 5
endfunction
nnoremap <C-t> :call OpenTerminal()<CR>
