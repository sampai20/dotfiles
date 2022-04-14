call plug#begin('~/.config/nvim')

Plug 'lifepillar/vim-gruvbox8'
Plug 'preservim/nerdtree'
Plug 'neovim/nvim-lspconfig'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'whonore/Coqtail'
Plug 'jlapolla/vim-coq-plugin'

call plug#end()

map <C-n> :NERDTreeToggle<CR>
map <C-p> :GFiles<CR>
imap kj <Esc>

colorscheme gruvbox8
set number
set hidden
set sw=2
set ts=2
set expandtab

source ~/.config/nvim/lsp.vim
