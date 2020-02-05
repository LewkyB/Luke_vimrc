# Luke's vimrc and tmux

Only setup for this requires copying and pasting the vimrc and tmux.conf and pressing a hotkey inside of of `tmux`. The plugins for `vim` will install automatically when you open `vim`. For `tmux` you will have to open `tmux` and use a hotkey to get the plugins installed. 

The `tmux` plugin `continuum` and `resurrect` will automatically save sessions every 10 minutes and will allow them to persist after system restarts. When you want to access your session again just open `tmux` and use the restore session hotkey.

## Installation
Requirements: `tmux` version 1.9 (or higher), `vim` version 8.0 (or higher), `curl`, `git`, `bash`

## Setup Instructions
- copy over the .vimrc into your own .vimrc
  ```
  cd ~ && vim .vimrc
  ```
- open `vim` so the plugins can install then close out of it
- open and close `vim` to fix the `colorscheme` error (won't happen again after doing this)
- create file named ".tmux.conf" and paste mine into it
  ```
  cd ~ && vim .tmux.conf
  ```
- open `tmux` by typing `tmux` into the terminal
- then press `prefix` + <kbd>I</kbd> (capital i) to install `tmux` plugins.
- finished!

## tmux Hotkeys

- `Prefix` key in tmux: <kbd>ctrl</kbd>+<kbd>B</kbd>
- open horizontal pane: `prefix` + <kbd>"</kbd>
- open vertical pane: `prefix` + <kbd>%</kbd>

- save session: `prefix` + <kbd>ctrl-s</kbd>
- restore session: `prefix` + <kbd>ctrl-r</kbd>

switch between windows in tmux:
- <kbd>ctrl-l</kbd> - left
- <kbd>ctrl-k</kbd> - up
- <kbd>ctrl-j</kbd> - down
- <kbd>ctrl-h</kbd> - right

## Using vim-fugitive

- Save your credentials for GitHub in your terminal with `git config --global credential.helper store`
- While in a repository use `git pull` then enter in your username and password (I believe this stores your credentials in plain text so it may not be the best thing to do)

- Open file in `vim`
- `git add` use `:Gwrite`
- `git commit "message"` use `:Gcommit -m "message"`
- `git push` use `:Gpush`


## Plugins


| vim plugins                         | Description                                                        |
| ----------------------------------- | ------------------------------------------------------------------ |
| [vim-plug](https://github.com/junegunn/vim-plug)      | Plugin manager     |
| [supertab](https://github.com/ervandew/supertab) | Use tab to autocomplete    |
| [fugitive](https://github.com/tpope/vim-fugitive) | Git wrapper `:Gstatus`, `:Gcommit`, `:Gpush` |
| [vim-surround](https://github.com/tpope/vim-surround) | Change surroundings in pairs        |
| [vim-commentary](https://github.com/tpope/vim-commentary) | Comment out code when running compiler |
| [vim-gitgutter](https://github.com/airblade/vim-gitgutter) | Shows a git diff in the 'gutter'  |
| [auto-pairs](https://github.com/jiangmiao/auto-pairs) | Automatically close brackets, parentheses, and quotes  |
| [vim-tmux-resizer](https://github.com/melonmanchan/vim-tmux-resizer) | Resize tmux panes and vim splits with Alt + hjkl  |
| [vim-tmux-clipboard](https://github.com/roxma/vim-tmux-clipboard) | Integration for vim and tmux's clipboard     |
| [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) | Navigation between tmux panes and vim splits        |
| [vim-polyglot](https://github.com/sheerun/vim-polyglot) | Improved syntax and indentation support   |
| [vim-airline](https://github.com/bling/vim-airline) | Improved lightweight status/tabline      |
| [vim-monokai-tasty](https://github.com/patstockwell/vim-monokai-tasty) | Favorite colorscheme so far |
| [ale](https://github.com/dense-analysis/ale) | Allows linting (syntax checking and semantic errors) while editing files  |
| [nerdtree](https://github.com/scrooloose/nerdtree) | File system explorer `:NERDTree`       |


| tmux plugins                         | Description                                                        |
|--------------------------------------|--------------------------------------------------------------------|
| [tmux Plugin Manager](https://github.com/tmux-plugins/tpm) | Used to easily install tmux plugins |
| [tmux-yank](https://github.com/tmux-plugins/tmux-yank) | Copy to system clipboard in tmux |
| [tmux-copycat](https://github.com/tmux-plugins/tmux-copycat) | Enables: regex searches, search result highlighting, predefined searches |
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
