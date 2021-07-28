call plug#begin()
Plug 'morhetz/gruvbox'
call plug#end()
colorscheme gruvbox

let g:table_mode_corner='|' "vim-table-mode compatível com tabelas markdown
let g:surround_{char2nr('o')} = "**\r**" "faz negrito no markdown com VISUAL 'So'
"vim-markdown tpope (ftplugin ja vem com vim)
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'lua', 'rust', 'c', 'javascript']
" let g:markdown_syntax_conceal = 0
" linhas de código embutido no markdown
let g:markdown_minlines = 100
"plasticboy/vim-markdown
let g:vim_markdown_auto_insert_bullets = 0
let g:vim_markdown_new_list_item_indent = 0
let game = 'bloodborne'

set wrap "quando a linha fica maior que a tela
set linebreak "quebra linhas que ultrapassam a tela no espaço entre palavras
set dictionary=~/OneDrive/Vim/spell/en_pt.utf-8.add
set nospell
set spelllang=pt_br,en_us "/Applications/MacVim.app/Contents/vim/pt
set textwidth=78
set list
set listchars=tab:▸\ ,eol:¬
set mouse=a
" esquemas de cores escuros que gostei:
" apprentice, papercolor, hybrid, blazer, hybrid-light, delek, saturn,
" summerfruit256, leya, blazer, tango-desert, OceanicNextLight, immortals,
" sweater

function RandomColorScheme()
  let mycolors = split(globpath(&rtp,"**/colors/*.vim"),"\n") 
  exe 'so ' . mycolors[localtime() % len(mycolors)]
  unlet mycolors
endfunction

command! NewColor call RandomColorScheme()

"Mapeamentos
let mapleader=" "
":help fzf-vim-commands
nnoremap <Leader>ff :<C-u>FZF<CR>
nnoremap <Leader>fag :<C-u>Ag<CR>
nnoremap <Leader>frg :<C-u>Rg<CR>
nnoremap <Leader>fll :<C-u>Lines<CR>
nnoremap <Leader>flb :<C-u>BLines<CR>
nnoremap <Leader>flo :<C-u>Locate<CR>
nnoremap <Leader>ftp :<C-u>Tags<CR>
nnoremap <Leader>ftb :<C-u>BTags<CR>
nnoremap <Leader>fmk :<C-u>Marks<CR>
nnoremap <Leader>fmp :<C-u>Maps<CR>
nnoremap <Leader>fw :<C-u>Windows<CR>
nnoremap <Leader>fhh :<C-u>History<CR>
nnoremap <Leader>fhc :<C-u>History:<CR>
nnoremap <Leader>fhs :<C-u>History/<CR>
nnoremap <Leader>fs :<C-u>Snippets<CR>
nnoremap <Leader>fcc :<C-u>Commits<CR>
nnoremap <Leader>fcb :<C-u>BCommits<CR>
nnoremap <Leader>fcb :<C-u>BCommits<CR>
nnoremap <Leader>fht :<C-u>Helptags<CR>
nnoremap <Leader>fhf :<C-u>Filetypes<CR>
nnoremap <Leader>wj <c-w>j
nnoremap <Leader>wl <c-w>l
nnoremap <Leader>wk <c-w>k
nnoremap <Leader>wh <c-w>h
nnoremap <Leader>ww :write<CR>
nnoremap <Leader>wq :wq<CR>
nnoremap <Leader>qq :q<CR>
nnoremap <Leader>ss :source %<CR>
nnoremap <Leader>acs OAbolish ps{ao,oes} ps{ão,ões}<esc>
nnoremap <Leader>acc OAbolish pc{ao,oes} pç{ão,ões}<esc>
nnoremap <Leader>aca OAbolish pc{a,as} pç{a,as}<esc>
nnoremap <Leader>aco OAbolish pc{o,os} pç{o,os}<esc>
nnoremap <Leader>bb :edit #<CR>
nnoremap <Leader>bf :bfirst<CR>
nnoremap <Leader>bn :bnext<CR>
nnoremap <Leader>bp :bprev<CR>
nnoremap <Leader>bl :blast<CR>
nnoremap <Leader>bd :bd<CR>
nnoremap <Leader>ls :buffers<CR>:buffer<Space>
nnoremap <Leader>no :nohls<CR>
nnoremap <Leader>oo o<esc>0dwi
nnoremap <Leader>oh o#<space>
nnoremap <Leader>oi o-<space>
nnoremap <Leader>oa o<CR><esc>dwi*<space>
nnoremap <Leader>op o+<space>
nnoremap <Leader>oc o-<space>[ ]<space>
nnoremap <Leader>cc ma0f[lrx`a
nnoremap <Leader>cl ma0f[lr<space>`a
nnoremap <Leader>cv ma0f[lrV`a]<space>
nnoremap <Leader>cf ma0f[lrF`a]<space>
nnoremap <Leader>co :NewColor<CR>
nnoremap <Leader>ii 0dwA
nnoremap <Leader>ih 0i<space><esc>0dwi<tab><esc>A
nnoremap <Leader>ij 0i<space><esc>0dwi<tab><tab><esc>A
nnoremap <Leader>ik 0i<space><esc>0dwi<tab><tab><tab><esc>A
nnoremap <Leader>il 0i<space><esc>0dwi<tab><tab><tab><tab><esc>A
nnoremap <Leader>pp :put *<CR>
vnoremap <Leader>yy :yank *<CR>

nnoremap <down> <c-e>
nnoremap <up> <c-y>

scriptencoding utf-8
syntax on
syntax enable
set nocompatible
filetype plugin indent on
set foldmethod=marker
set fileformats=unix,dos
set encoding=utf-8
set fileencoding=utf-8
set guicursor+=a:blinkon0
"set guifont=Courier_New:h10:cANSI:qDRAFT
set guifont=SauceCodeProNerdFontComplete-Regular:h18
set tabstop=4 softtabstop=4 expandtab shiftwidth=4 smarttab
set number

"Com plugins vim-SyntaxRange e vim-ingo-library
"Para adicionar syntax highlighting em uma região de código
"autocmd Syntax * call SyntaxRange#Include('```python$', '```$', 'python')


"Testa qual o Sistema Operacional
"if has('win32')
"    set dir=C:\Users\1538943\OneDrive\Vim\windows\swapfiles
"    set viewdir=C:\Users\1538943\OneDrive\Vim\windows\views
"    set backupdir=C:\Users\1538943\OneDrive\Vim\windows\swapfiles
"elseif has('mac')
"    set dir=/Users/thiagohubes/OneDrive/Vim/macos/swapfiles
"    set viewdir=/Users/thiagohubes/OneDrive/Vim/macos/views
"    set backupdir=/Users/thiagohubes/OneDrive/Vim/macos/swapfiles
"elseif has('unix')
"    set dir=/home/thiagohubes/OneDrive/Vim/swapfiles
"    set viewdir=/home/thiagohubes/OneDrive/Vim/views
"    set backupdir=/home/thiagohubes/OneDrive/Vim/swapfiles
"endif

"set swapfile

"allow to change files/args/buffers without having to save each modification
set hidden

"previews search while typing it
set incsearch

" Local vimrc loading
let g:localvimrc_sandbox=0
let g:localvimrc_ask=0

"let g:abolish_save_file = expand('<sfile>:p')
"let g:abolish_save_file = expand('~/.vim/after/plugin/abolish.vim')
"let g:abolish_save_file = expand('~/OneDrive/Vim/abolish.vim')
"Abolishing stuff
"au VimEnter * if exists("g:loaded_abolish") | source ~/OneDrive/Vim/abolish.vim | endif

"source $VIMRUNTIME/mswin.vim
"behave mswin

"matches words with %
"runtime macros/matchit.vim

"augroup AutoSaveFolds
"    autocmd!
"    autocmd BufWinLeave * mkview! /Users/thiagohubes/OneDrive/Vim/views/viewfile
"    autocmd BufWinEnter * silent! loadview /Users/thiagohubes/OneDrive/Vim/views/viewfile
"augroup END
"
"Minhas funções
"Função para buscar breakout sessions de uma lista de linhas dobradas de sessões da cisco
"live e organizar pelo tipo de sessão
"1. Pesquisar por padrão de seis 'letras maiúsculas'-'quatro dígitos'
"2. Copiar as seis letras para o registrador u
"3. Dobrar novamente a linha atual
"4. Copiar o número da linha atual para o registrador l
"5. Pesquisar pelo último texto copiado utilizando o registrador "
"6. Dobrar novamente a linha atual
"7. Recortar a linha dobrada
"8. Voltar para a linha copiada do registrador l
"9. Colar o texto recortado
"function FindBrk()
"    normal /\(\u\)\{6}-\(\d\)\{4}
    "normal! vlllllly
"endfunction

"Por default, o * buscar a palavra do cursor no modo normal
"Este map e function altera o comportamento de * para o modo visual
"ele busca a seleção e não a palavra
"o # faz a busca reversa
"xnoremap * :<C-u>call <SID>VSetSearch('/')<CR>/<C-R>=@/<CR><CR> 
"xnoremap # :<C-u>call <SID>VSetSearch('?')<CR>?<C-R>=@/<CR><CR>

"function! s:VSetSearch(cmdtype)
"    let temp = @s
"    norm! gv"sy
"    let @/ = '\V' . substitute(escape(@s, a:cmdtype.'\'), '\n', '\\n', 'g') 
"    let @s = temp
"endfunction

"Fixes mouse issues using Alacritty terminal
"set ttymouse=sgr
"
