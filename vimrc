set nocompatible               " be iMproved
set cursorline
set number
set guifont=Source_Code_Pro:h14
set background=dark
filetype off                   " required!
nnoremap <LEADER>a :NERDTreeToggle<CR>
nnoremap <LEADER>c :ConqueTermSplit bash<CR>

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'vim-scala'
Bundle 'ctrlp.vim'
Bundle 'Solarized'
Bundle 'The-NERD-Commenter'
Bundle 'The-NERD-tree'
Bundle 'Buffergator'

colorscheme solarized
