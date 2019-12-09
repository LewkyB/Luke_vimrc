# Luke's vimrc and tmux

Only setup for this requires copying and pasting the vimrc and tmux.conf and pressing a hotkey inside of of tmux. The plugins for vim will install automatically when you open vim. For tmux you will have to open tmux and use a hotkey to get the plugins installed. 

The tmux plugin continuum and resurrect will automatically save sessions every 10 minutes and will allow them to persist after system restarts. When you want to access your session again just open tmux and use the restore session hotkey.

## Setup Instructions
- install curl
  ```
  sudo apt-get install curl
  ```
- make sure vim is 8.0 or newer
- copy over the .vimrc into your own .vimrc
  ```
  cd ~ && vim .vimrc
  ```
- open vim so the plugins can install then close out of it
- open and close vim to fix the colorscheme error (won't happen again after doing this)
- install tmux (1.8 or newer)
  ```
  sudo apt-get install tmux
  ```
- create file named ".tmux.conf" and paste mine into it
  ```
  cd ~ && vim .tmux.conf
  ```
- open tmux by typing
  ```
  tmux
  ```
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


| vim plugins                         | Description                                                        |
| ----------------------------------- | ------------------------------------------------------------------ |
| [vim-plug](https://github.com/junegunn/vim-plug)      | Plugin manager                                   |
| [supertab](https://github.com/ervandew/supertab) | Use tab to autocomplete                               |
| [fugitive](https://github.com/tpope/vim-fugitive) |                                                      |
| [vim-surround](https://github.com/tpope/vim-surround) |                                                  |
| [vim-commentary](https://github.com/tpope/vim-commentary) |                                              |
| [vim-gitgutter](https://github.com/airblade/vim-gitgutter) |                                             |
| [auto-pairs](https://github.com/jiangmiao/auto-pairs) |                                                  |
| [vim-tmux-resizer](https://github.com/melonmanchan/vim-tmux-resizer) |                                   |
| [vim-tmux-clipboard](https://github.com/roxma/vim-tmux-clipboard) |                                      |
| [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) |                                |
| [vim-polyglot](https://github.com/sheerun/vim-polyglot) |                                                |
| [vim-airline](https://github.com/bling/vim-airline) |                                                    |
| [vim-monokai-tasty](https://github.com/patstockwell/vim-monokai-tasty) |                                 |
| [ale](https://github.com/dense-analysis/ale) |                                                           |
| [nerdtree](https://github.com/scrooloose/nerdtree) |                                                     |


| tmux plugins                         | Description                                                        |
|--------------------------------------|--------------------------------------------------------------------|
| [tmux Plugin Manager](https://github.com/tmux-plugins/tpm) | used to easily install tmux plugins |
| [tmux-yank](https://github.com/tmux-plugins/tmux-yank) | Copy to system clipboard in tmux |
| [tmux-copycat](https://github.com/tmux-plugins/tmux-copycat) | enables: regex searches, search result highlighting, predefined searches |
| [tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect) | Restore tmux environment after system restart |
| [tmux-continuum](https://github.com/tmux-plugins/tmux-continuum) | Continuous saving of tmux environment |

## Tasks
- [x] autosave tmux sessions
- [x] tmux sessions persist through restart/shutdown
- [ ] tmux automatically opens previous sessions
- [ ] fix syntax highlighting for types (int, char, string)
- [ ] prevent auto-pairs from closing something when I don't want it to happen
- [ ] auto-complete suggestions at end of line
- [ ] coc.nvim with functional CCLS
- [ ] automatically input LSP details into :CocConfig

## Useful Cheat Sheet
![Vgod's Cheatsheet](https://camo.githubusercontent.com/acdb969ba588498a1886b26cbbdd47527030135d/687474703a2f2f70656f706c652e637361696c2e6d69742e6564752f76676f642f76696d2f76696d2d63686561742d73686565742d656e2e706e67)

### References
- https://github.com/amix/vimrc
- https://tmuxcheatsheet.com/
- https://github.com/tmux-plugins/tpm
- https://github.com/junegunn/vim-plug
