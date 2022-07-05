" Reuse ~/.vimrc and ~/.vim
" Comes from https://vi.stackexchange.com/a/15548
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc

" packer
lua require('plugins')

" Find files using Telescope command-line sugar.
" See https://github.com/nvim-telescope/telescope.nvim#usage
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
