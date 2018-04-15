" Pathogen
execute pathogen#infect()

set tabstop=2
set shiftwidth=2
set expandtab
set number
set mouse=a
set laststatus=2
set t_Co=256
set term=xterm-256color
set termencoding=utf-8
set encoding=utf-8
"set guifont=Ubuntu\ Mono\ Nerd\ Font\ Complete\ 12
set guifont=Ubuntu\ Mono\ derivative\ Powerline\ Regular\ 12
set fillchars=""
set ruler                     " show the line number on the bar
set more                      " use more prompt
set autoread                  " watch for file changes
set noswapfile
set ai                        " auto intend
set ignorecase                " ignore case while searching text
set nocompatible              " disable Vi command
set wildmenu                  " set auto 
set pastetoggle=
set termguicolors
set modifiable

syntax on 
" colorscheme dracula
color atom-dark-256
"let base16colorspace=256
"colorscheme base16-default-dark


map \\ :NERDTreeToggle<CR>
map mc :!mc -b<CR>
map cm :s/\(^.*$\)/#\1/<CR>
map <F5> :!% <CR>
map <F4> :!/bin/bash <CR>
map <C-c> :w !pbcopy<CR>
map <tab><tab> <C-w>w

let NERDTreeShowBookmarks=1
let g:NERDTreeShowHidden=0
let g:NERDTreeWinSize=40

let g:Powerline_symbols='fancy'
let g:airline_powerline_fonts=1

let g:WebDevIconsUnicodeDecorateFolderNodes = 1

set laststatus=2

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

au VimEnter * call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
au VimEnter * call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
au VimEnter * call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
au VimEnter * call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
au VimEnter * call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
au VimEnter * call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
au VimEnter * call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
au VimEnter * call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
au VimEnter * call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
au VimEnter * call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
au VimEnter * call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
au VimEnter * call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
au VimEnter * call NERDTreeHighlightFile('rb', 'Red', 'none', '#ffa500', '#151515')
au VimEnter * call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

