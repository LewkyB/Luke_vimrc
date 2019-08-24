To find vimrc enter VIM and enter ":version" or "sudo vim $HOME/.vimrc" in terminal


syntax enable
filetype indent on
set showmatch
set autoindent
set number
set hidden
set incsearch
set ruler
set wildmenu
set history=1000
set spell
set visualbell

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

inoremap (; (<CR>);<C-c>0
inoremap (, (<CR>),<C-c>0
inoremap {; {<CR>};<C-c>0
inoremap {, {<CR>},<C-c>0
inoremap [; [<CR>];<C-c>0
