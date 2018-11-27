func! myspacevim#before() abort
    "============================================================
    "============================================================
    " @@@ vim-autoformat.vim
    "============================================================
    noremap <F4> :Autoformat<CR>
    " au BufWrite * :Autoformat "formatted upon saving file
    let g:autoformat_retab = 1
    let g:autoformat_remove_trailing_spaces = 1

    " let g:formatdef_custom_c='"astyle --style=linux -cpU -j -z2 --align-pointer=type"'
    " 大小写关键
    let g:formatdef_custom_c='"clang-format-6.0 -style=file"'
    " let g:formatdef_custom_c='"clang-format -style=Google"'
    let g:formatters_c = ['custom_c']
    let g:formatters_cpp = ['custom_c']


    "============================================================
    "============================================================
    " @@@ neo-make
    "============================================================
    let g:clang_library_path = "/usr/lib/llvm-6.0/lib"

    "============================================================
    "============================================================
    " &&& 快捷键重置
    nnoremap L $
    nnoremap H ^
    onoremap L $
    onoremap H ^
    vnoremap L $
    vnoremap H ^
    nnoremap <TAB> >
    nnoremap <S-TAB> <
    vnoremap <TAB> >
    vnoremap <S-TAB> <

    nnoremap j gj
    nnoremap k gk
    nnoremap y "+y
    vnoremap y "+y
    "============================================================
    " &&& 简化
    nnoremap cw ciw
    nnoremap Q @q
    nnoremap <Esc><Esc> :set hlsearch!<Cr>
    "============================================================
    " &&& 新的快捷键
    inoremap <C-K>o <Esc>o

    "============================================================
    " &&& Ctrl
    "============================================================
    nnoremap <C-c>s :%s/\<<c-r>=expand("<cword>")<cr>\>/

    inoremap <c-l> <right>
    inoremap <c-j> <down>
    inoremap <c-k> <space>
    inoremap <c-u> <space>
    inoremap <c-l> <right>

    nnoremap <C-k>a f(l
    inoremap <C-k>[ <End><Space>{<Cr>}<Left><Cr><Up><Tab>

    "============================================================
    "============================================================
    " 外观
    "============================================================
    set guicursor=i:ver25-iCursor
endf
