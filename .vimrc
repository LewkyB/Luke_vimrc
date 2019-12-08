"auto install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"add plugins
call plug#begin('~/.vim/plugged')

"autocomplete
Plug 'ervandew/supertab'

"git plugins
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

"formatting
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
let g:AutoPairsMultilineClose = 0
let g:AutoPairsMapSpace=0

"tmux
"Resize tmux panes and vim splits with Alt + hjkl
Plug 'melonmanchan/vim-tmux-resizer'
Plug 'roxma/vim-tmux-clipboard'
Plug 'christoomey/vim-tmux-navigator'

"syntax
Plug 'sheerun/vim-polyglot'

"appearance
Plug 'bling/vim-airline'
Plug 'patstockwell/vim-monokai-tasty'

"Lint
Plug 'dense-analysis/ale'

"file tree
Plug 'scrooloose/nerdtree'

call plug#end()
"end plugins

"theme                                                                   
let g:vim_monokai_tasty_italic = 1                                       
colorscheme vim-monokai-tasty                                            
colorscheme vim-monokai-tasty                                            
let g:airline_theme='monokai_tasty'     

"tmux navigator vim plugin keys remapped
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-Space> :TmuxNavigatePrevious<cr>

"auto save all buffers when switching between vim and tmux
let g:tmux_navigator_save_on_switch = 2

"General settings                                                        
syntax on                                                            
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
set clipboard=unnamed "copy lines yanked to system clipboard             
set tabstop=4                                                            
set shiftwidth=4                                                         
set softtabstop=4                                                        
set expandtab                                                            

"show relative numbers in normal mode and absolute numbers in insert mode
set number relativenumber                                                
augroup numbertoggle                                                     
    autocmd!                                                               
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber          
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber        
augroup END                                                              


"keys remapped                                                           
inoremap (; (<CR>);<C-c>0                                                
inoremap (, (<CR>),<C-c>0                                                
inoremap {; {<CR>};<C-c>0                                                
inoremap {, {<CR>},<C-c>0                                                
inoremap [; [<CR>];<C-c>0                                                

