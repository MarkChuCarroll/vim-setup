""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MarkCC's vim setup.
" mercilessly cribbed from too many sources to list.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible               " be iMproved
filetype off                   " required!

"""""""""""""""""""""""""""""""""""""""""
" Some basic settings
"""""""""""""""""""""""""""""""""""""""""
set number " show line numbers
" set ruler  " show cursor position info in bottom right
set laststatus=2  " Show the statusbar.
set showcmd 
set wildmenu
set showmatch   " blink matching brackets
set matchtime=3  

""""""""""""""""""""""""""""""""""""""""""""""""
" Searching
""""""""""""""""""""""""""""""""""""""""""""""""
" Use magic regexs for search - they're almost like PCRE.
nnoremap / /\v
vnoremap / /\v

set ignorecase  " Assume case insensitive
set smartcase   " Assume case sensitive in the case of uppercase chars
set incsearch
set hlsearch    " Highlight the last search done
" Keybinding to turn off highlight
nmap <silent> <leader>q :silent :nohlsearch<CR>


""""""""""""""""""""""""""""""""""
" statline opts. 
" based on statline.vim
""""""""""""""""""""""""""""""""""

" set fonts and colors
set guifont=Source_Code_Pro:h14
set background=dark

" Tab handling: tab width 2, spaces for tabs.
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set expandtab
set smartindent


"""""""""""""""""""""""""""""""""""""""""
" Keybindings
"""""""""""""""""""""""""""""""""""""""""
nnoremap <LEADER>a :NERDTreeToggle<CR>
nnoremap <LEADER>c :ConqueTermSplit bash<CR>
" Make it easy to refer to the same directory as the current file.
" in ex-mode, %% will expand to the dir.
cabbr <expr> %% expand('%:p:h')
nmap <LEADER>ew :edit %%/
" \ev to edit vimrc
nnoremap <leader>ev :split $MYVIMRC<cr>
" \sv to source vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>
" surround current word in quotes
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
" surround current word in emph tag
nnoremap <leader>i viw<esc>a</emph><esc>hhhhhbi<emph><esc>lel

" Unbind the arrows, to break my awful habit of 
" pulling my hand away from homerow to use the arrows.
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

"filename
hi default link User1 Identifier
" flags
hi default link User2 Statement
" errors
hi default link User3 Error
" fugitive
hi default link User4 Special
set statusline=[%n]\ %< " Buffer number
set statusline+=%1*[%t]%*  " filename 
set statusline+=%2*%h%w%m%r%*   " flags
set statusline+=\ %y   "file type
set statusline+=%=  " horizontal zep
" current line and column (-:left align, 14:minwid, l:line, L:nLines, c:column)
set statusline+=%-14(\ L%l/%L:C%c\ %)
set statusline+=%P    " scroll percent
set statusline+=%4*%{fugitive#statusline()}%* " fugitive

inoremap jk <esc>
augroup pml
  autocmd!
  autocmd BufRead,BufNewFile *.pml set filetype=xml
augroup END

" Set up vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'ctrlp.vim'
Bundle 'Solarized'
Bundle 'The-NERD-Commenter'
Bundle 'The-NERD-tree'
Bundle 'Buffergator'
Bundle 'SuperTab'
Bundle 'Ubloh-Color-Scheme'
Bundle 'nu42dark-color-scheme'
Bundle 'Ambient-Color-Scheme'
Bundle 'warez-colorscheme'
Bundle 'fugitive.vim'
Bundle 'Gundo'

let g:solarized_contrast="high"
colorscheme darkblue
if has("gui_running")
  set transparency=10
endif

