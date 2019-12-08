# Luke's vimrc and tmux

Only setup for this requires copying and pasting the vimrc and tmux.conf and pressing a hotkey inside of of tmux. The plugins for vim will install automatically when you open vim. For tmux you will have to open tmux and use a hotkey to get the plugins installed. 

The tmux plugin continuum and resurrect will automatically save sessions every 10 minutes and will allow them to persist after system restarts. When you want to access your session again just open tmux and use the restore session hotkey.

## Setup Instructions
- make sure vim is 8.0 or newer
- copy over the .vimrc into your own .vimrc (enter "cd ~ && vim .vimrc")
- open vim so the plugins can install then close out of it
- open and close vim to fix the colorscheme error (won't happen again after doing this)
- install tmux (1.8 or newer)
- create file named ".tmux.conf" and paste mine into it (enter "cd ~ && vim .tmux.conf")
- open tmux by entering "tmux" into the terminal
- then press ctrl-B then I (capital i) to install tmux plugins.
- finished!

## tmux Hotkeys

- Prefix key in tmux: ctrl+B
- open horizontal pane: prefix key then "
- open vertical pane: prefix key then %

- save session: prefix key then ctrl-s
- restore session: prefix key then ctrl-r

switch between windows in tmux:
- ctrl-l - left
- ctrl-k - up
- ctrl-j - down
- ctrl-h - right

## Plugins

###### vim plugins
- /junegunn/vim-plug
- /ervandew/supertab 
- /tpope/fugitive
- /tpope/vim-surround
- /tpope/vim-commentary
- /airblade/vim-gitgutter
- /jiangmiao/auto-pairs
- /melonmanchan/vim-tmux-resizer
- /roxma/vim-tmux-clipboard
- /christoomey/vim-tmux-navigator
- /sheerun/vim-polyglot
- /bling/vim-airline
- /patstockwell/vim-monokai-tasty 
- /dense-analysis/ale
- /scrooloose/nerdtree

###### tmux plugins
- tpm
- tmux-yank
- tmux-copycat
- tmux-resurrect
- tmux-continuum

## Useful Cheat Sheet
![Vgod's Cheatsheet](https://camo.githubusercontent.com/acdb969ba588498a1886b26cbbdd47527030135d/687474703a2f2f70656f706c652e637361696c2e6d69742e6564752f76676f642f76696d2f76696d2d63686561742d73686565742d656e2e706e67)

## References
- https://github.com/amix/vimrc
- https://tmuxcheatsheet.com/
- https://github.com/tmux-plugins/tpm
- https://github.com/junegunn/vim-plug
