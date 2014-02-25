""""""""""""""""""""""""
" Personalizando o VIM "
""""""""""""""""""""""""

" desabilita o mouse
set mouse=a

" desabilita menus
set guioptions-=m
set guioptions-=r
set guioptions-=T

" numera as linhas
set number

" desabilita backups
set nobackup
set noswapfile
set nowritebackup

" completa o comando com TAB igual o bash
set wildmode=longest,list

" vai pro diretorio do arquivo aberto
set autochdir

" cores e temas
set background=dark
colorscheme base16-railscasts
filetype on
filetype off
syntax on

" tabulacao
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

" identacao
filetype plugin indent on
set autoindent

" status da linha
" set statusline=%f

" Auto-fecha parênteses, chaves etc.
inoremap { {}<LEFT>
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>

"""""""""""""""""""""""""""""
" Atalhos comuns do teclado "
"""""""""""""""""""""""""""""

" Permite selecionar com SHIFT + SETA como no Windows
set selectmode=mouse,key
set mousemodel=popup
set keymodel=startsel,stopsel
set selection=exclusive

" Backspace no modo de visão apaga a seleção
vnoremap <BS> d

" CTRL-X e SHIFT-Del corta
vnoremap <C-X> "+x
vnoremap <S-Del> "+x
"
" CTRL-C e CTRL-Insert copia
vnoremap <C-C> "+y
vnoremap <C-Insert> "+y

" CTRL-V e SHIFT-Insert cola
noremap <C-V>        "+gP
noremap <S-Insert>   "+gP
inoremap <C-V>       <C-O>:set nosi<CR><C-R>+<C-O>:set si<CR>
inoremap <S-Insert>  <C-R>+
cnoremap <C-V>       <C-O>:set nosi<CR><C-R>+<C-O>:set si<CR>
cnoremap <S-Insert>  <C-R>+
"
" CTRL-S salva
noremap <C-S>  :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

" CTRL-Z desfaz
noremap <C-Z> u
vnoremap <C-Z> <C-C>u
inoremap <C-Z> <C-O>u

" CTRL-Y refaz
noremap <C-Y> <C-R>
inoremap <C-Y> <C-O><C-R>

" CTRL-A seleciona tudo
noremap <C-A> gggH<C-O>G
inoremap <C-A> <C-O>gg<C-O>gH<C-O>G
cnoremap <C-A> <C-C>gggH<C-O>G
onoremap <C-A> <C-C>gggH<C-O>G
snoremap <C-A> <C-C>gggH<C-O>G
xnoremap <C-A> <C-C>ggVG

" CTRL-F4 fecha a janela
noremap <C-F4> <C-W>c
inoremap <C-F4> <C-O><C-W>c
cnoremap <C-F4> <C-C><C-W>c
onoremap <C-F4> <C-C><C-W>c

" usando tab para dar espacos
nmap <S-Tab> <<
imap <S-Tab> <Esc><<i

"""""""""""""""""""""""""""
" Configuracao de Plugins "
"""""""""""""""""""""""""""

" carregar plugins automaticamente
execute pathogen#infect()

" NERDTree explorar arquivos
noremap <F2>  :NERDTree<CR>
inoremap <F2> <C-O>:NERDTree<CR>

" CommandT buscar nos arquivos
nnoremap <leader>t :CommandT<CR>
nnoremap <silent> <Leader>b :CommandTBuffer<CR>

""""""""""""""""""""""""
" OUTRAS CONFIGURACOES "
""""""""""""""""""""""""

" editar o VIMRC
map <F1> :execute ":e $MYVIMRC"<CR>
