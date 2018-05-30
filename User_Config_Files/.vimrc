set nocompatible
filetype off

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"### Vim-plug
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
Plug 'farmergreg/vim-lastplace'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'Yggdroot/indentLine'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'easymotion/vim-easymotion'
Plug 'Chiel92/vim-autoformat'
Plug 'itchyny/lightline.vim'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'Valloric/YouCompleteMe'
call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"###外观
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme onedark                " 配置颜色主题
set number relativenumber      " 显示行号
set ruler                          " 打开状态栏标尺
set cursorline                     " 突出显示当前行
set syntax=on                      " 语法高亮
set showmatch                      " 高亮显示匹配的括号
set laststatus=2                   " 总是显式状态行
set matchtime=3                    " 匹配括号高亮的时间(单位：0.1s)
set scrolloff=10                   " 光标到屏幕底端保留 10 行 (光标位于屏底看着很不舒服的)
set lines=35 columns=118           " 启动时的大小
winpos 177 51                     " 启动时的位置
set nowrap               " 自动换行
set list
set showbreak=↪\

" set listchars=tab:→\ ,trail:␣,extends:…,eol:⏎
set listchars=tab:‣\ ,trail:·,precedes:«,extends:»,eol:¬
" set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
" set listchars=tab:▸-,trail:·,eol:↩︎,trail:-


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"###搜索
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase smartcase           " 搜索忽略大小写，但有大写字母时仍保持大小写敏感
set hlsearch                       " 高亮搜索
set incsearch                      " 增量式搜索,逐字符高亮
set wrapscan               " 循环搜索


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"###操作
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set clipboard+=unnamed             " 共享剪切板
set showcmd                        " 输入的命令显示出来
set iskeyword+=_,$,@,%,#,-         " 带有如下符号的单词不要被换行分割
set expandtab                      " 用空格代替Tab (makefile是会经常用Tab的)
set softtabstop=4                  " 在编辑模式的时候按退格键的时候退回缩进的长度
set tabstop=4                      " Tab 键的宽度
set shiftwidth=4                   " 行交错宽度
set mouse+=a                       " 鼠标可用
set autoindent                     " 继承前一行的缩进方式，特别适用于多行注释
set smartindent                    " 打开智能缩进
set autochdir                      " 将当前目录自动切换为文件所在目录
" set completeopt=menu,preview     "让Vim的补全菜单行为与一般IDE一
set completeopt=menu
set wildmode=longest,list:longest  " zsh-like

set foldenable
set foldmethod=syntax
set foldcolumn=2
set foldlevel=1

au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

let mapleader = "\<space>"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"###备份
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set confirm                        " 未保存或者只读时，弹出确认
set nobackup                       " 不生成备份文件
setlocal noswapfile                " 不生成 swap 文件
set bufhidden=hide                 " 当 buffer 被丢弃的时候隐藏
set noerrorbells                   " 不发出警告声

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"###解码
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set enc=utf8
set fencs=utf8,gbk,gb2312,gb18030



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""@@@ youcompleteme.vim"""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:ycm_cache_omnifunc=0                      " 禁止缓存匹配项,每次都重新生成匹配项
" let g:ycm_server_python_interpreter='/usr/bin/python3'
autocmd InsertLeave * if pumvisible() == 0|pclose|endif    "离开插入模式后自动关闭预览窗口
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
"上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
let g:ycm_collect_identifiers_from_tags_files=1 " 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion=99     " turns off the identifier completion engine and just leaves the semantic engine.
let g:ycm_seed_identifiers_with_syntax=1        " 语法关键字补全
let g:ycm_complete_in_strings = 1   "在字符串输入中也能补全
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_warning_symbol = '*>'
let g:ycm_key_invoke_completion = '<c-z>'
let g:ycm_filetype_whitelist = {
            \ "c":1,
            \ "cpp":1,
            \ "objc":1,
            \ "sh":1,
            \ "zsh":1,
            \ "zimbu":1,
            \ }
let g:ycm_semantic_triggers =  {
            \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{1}'],
            \ 'cs,lua,javascript': ['re!\w{2}'],
            \ }
highlight PMenu ctermfg=0 ctermbg=242 guifg=black guibg=darkgrey
highlight PMenuSel ctermfg=242 ctermbg=8 guifg=darkgrey guibg=black

nnoremap <Leader>jd :YcmCompleter GoToDeclaration<Cr>
nnoremap <Leader>jc :YcmCompleter GoToDefinition<Cr>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""@@@ vim-lastplace.vim"""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lastplace_ignore = "gitcommit,gitrebase,svn,hgcommit"
let g:lastplace_ignore_buftype = "quickfix,nofile,help"
let g:lastplace_open_folds = 0




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"@@@ lightline.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {
            \ 'colorscheme': 'wombat',
            \ 'active': {
            \   'right': [ [ 'lineinfo' ],
            \              [ 'percent' ],
            \              [ 'fileformat', 'fileencoding', 'filetype', 'charvaluehex' ] ]
            \ },
            \ 'component': {
            \   'charvaluehex': '0x%B'
            \ },
            \ }



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"@@@ tagbar.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F8> :TagbarToggle<CR>
let g:tag_sort=0
let g:tagbar_indent = 0
let g:tagbar_left=1
let g:tagbar_width=25

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"@@@ indentLine
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"@@@ vim-autoformat.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <F3> :Autoformat<CR>
au BufWrite * :Autoformat "formatted upon saving file
let g:autoformat_retab = 1
let g:autoformat_remove_trailing_spaces = 1

" let g:formatdef_custom_c='"astyle --style=linux -cpU -j -z2 --align-pointer=type"'
" 大小写关键
let g:formatdef_custom_c='"clang-format -style=file"'
" let g:formatdef_custom_c='"clang-format -style=Google"'
let g:formatters_c = ['custom_c']
let g:formatters_cpp = ['custom_c']

autocmd FileType vim,tex,zshrc let b:autoformat_autoindent=0


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"@@@ vim-commentary.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Leader>c :Commentary<Cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"@@@ nerdtree.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F5> :NERDTreeToggle<CR>
nnoremap <silent> <Leader><Leader>f :NERDTreeFind<CR>
let NERDTreeWinPos = 'right'
let g:NERDTreeWinSize=20

" 显示行号
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1

autocmd vimenter * NERDTree
" Go to previous (last accessed) window.
autocmd VimEnter * wincmd p

" automatically close a tab if the only remaining window is NerdTree
" autocmd bufenter * if (winnr(“$”) == 1 && exists(“b:NERDTreeType”) && b:NERDTreeType == “primary”) | q | endif
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"@@@ NerdtreeAndTagbar
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! ToggleNERDTreeAndTagbar()
    let w:jumpbacktohere = 1

    " Detect which plugins are open
    if exists('t:NERDTreeBufName')
        let nerdtree_open = bufwinnr(t:NERDTreeBufName) != -1
    else
        let nerdtree_open = 0
    endif
    let tagbar_open = bufwinnr('__Tagbar__') != -1

    " Perform the appropriate action
    if nerdtree_open && tagbar_open
        NERDTreeClose
        TagbarClose
    elseif nerdtree_open
        TagbarOpen
    elseif tagbar_open
        NERDTree
    else
        NERDTree
        TagbarOpen
    endif

    " Jump back to the original window
    for window in range(1, winnr('$'))
        execute window . 'wincmd w'
        if exists('w:jumpbacktohere')
            unlet w:jumpbacktohere
            break
        endif
    endfor
endfunction
nnoremap <leader>\ :call ToggleNERDTreeAndTagbar()<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"@@@ easymotion.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap <Leader><Leader>s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"@@@ UltiSnips
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SirVer/ultisnips 代码片断
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:ycm_use_ultisnips_completer = 1
"定义存放代码片段的文件夹，使用自定义和默认的，将会的到全局，有冲突的会提示
let g:UltiSnipsSnippetDirectories=['UltiSnips']
let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips'
" UltiSnips completion function that tries to expand a snippet. If there's no
" snippet for expanding, it checks for completion window and if it's
" shown, selects first element. If there's no completion window it tries to
" jump to next placeholder. If there's no placeholder it just returns TAB key
function! g:UltiSnips_Complete()
    call UltiSnips#ExpandSnippet()
    if g:ulti_expand_res == 0
        if pumvisible()
            return "\<C-n>"
        else
            call UltiSnips#JumpForwards()
            if g:ulti_jump_forwards_res == 0
                return "\<TAB>"
            endif
        endif
    endif
    return ""
endfunction
au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
" Expand snippet or return
let g:ulti_expand_res = 1
function! Ulti_ExpandOrEnter()
    call UltiSnips#ExpandSnippet()
    if g:ulti_expand_res
        return ''
    else
        return "\<return>"
    endif
endfunction
" Set <space> as primary trigger
inoremap <return> <C-R>=Ulti_ExpandOrEnter()<CR>

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<c-f>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"$$$ 定义函数SetTitle，自动插入文件头
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufNewFile *.py,*.sh,*.cpp exec ":call SetTitle()"
let $author_name = "xxxx"
let $author_email = "xxxx@xxx.xx"

func SetTitle()
    if &filetype == 'sh'
        call setline(1, "\#!/bin/bash")
    elseif &filetype == 'python'
        call setline(1, "\#!/usr/bin/python")
        call append(line("."), "\# -*- coding: utf-8 -*-")
    elseif &filetype == 'cpp'
        call setline(1, "#include <iostream>")
    elseif &filetype == 'c'
        call setline(1, "#include <stdio.h>")
    endif
endfunc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup AutoSaveFolds
    autocmd!
    autocmd BufWinLeave * if expand("%") != "" | mkview | endif
    autocmd BufWinEnter * if expand("%") != "" | loadview | endif
augroup END


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"&&& 快捷键重置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap L $
nnoremap H ^
onoremap L $
onoremap H ^
vnoremap L $
vnoremap H ^
nnoremap tn :tabnext<Cr>
nnoremap tp :tabprevious<Cr>
nnoremap <TAB> >>
nnoremap <S-TAB> <<
vnoremap <TAB> >
vnoremap <S-TAB> >

nnoremap j gj
nnoremap k gk

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"&&& Ctrl
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap <c-l> <right>
inoremap <c-j> <down>
inoremap <c-k> <space>
inoremap <c-u> <space>
inoremap <Leader>k <space>

nnoremap <c-l> <c-w>l
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"&&& Leader
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Leader>1 %
inoremap <Leader>1 <Space>!=<Space>
inoremap <Leader>a ()<Left>
inoremap <Leader>- ->
inoremap <Leader>z <><Left>
inoremap <Leader>l <End>
inoremap <Leader>i <Home><Space><Left>
inoremap <Leader>{ <End><Space>{}<Left>
inoremap <Leader>; <End>;
inoremap <leader>< <><Left>
nnoremap <Leader>l :loadview<Cr>
nnoremap <Leader>m :mkview<Cr>
nnoremap <Leader>n :next<Cr>
inoremap <Leader>o <End><Cr>
inoremap <Leader>O <Home><Cr><Up>
nnoremap <Leader>v V
nnoremap <leader><Leader>l :nohlsearch<cr>:diffupdate<cr>:syntax sync fromstart<cr><c-l>

nnoremap <Leader><Leader>q :qa!<Cr>
nnoremap <Leader>q :q!<Cr>
nnoremap <Leader><Leader>w :wqa<Cr>
nnoremap <Leader><Leader>s :split<Cr>
nnoremap <Leader><Leader>v :vsplit<Cr>
nnoremap <Leader>z :wq<Cr>

nnoremap <Leader>/ /^.\+$\n{<Cr>
nnoremap <Leader>a f(a

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"&&& 简化
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap cw ciw
nnoremap Q @q
nnoremap <Esc><Esc> :set hlsearch!<Cr>

"&&&
nnoremap \s :%s//
nnoremap <leader>s :%s/\<<c-r>=expand("<cword>")<cr>\>/
inoremap <Leader>t <T><Space>

