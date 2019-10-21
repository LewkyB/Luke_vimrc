syntax enable
filetype indent on

set showmatch
set autoindent
set hidden
set incsearch
set ruler
set wildmenu
set history=1000
set spell
set visualbell
set clipboard=unnamedplus "copy lines yanked to system clipboard
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"both absolute and relative line numbers are enabled by default, which 
"produces “hybrid” line numbers. When entering insert mode, relative 
"line numbers are turned off, leaving absolute line numbers turned on
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

colorscheme desert

"keys remapped
inoremap (; (<CR>);<C-c>0
inoremap (, (<CR>),<C-c>0
inoremap {; {<CR>};<C-c>0
inoremap {, {<CR>},<C-c>0
inoremap [; [<CR>];<C-c>0
