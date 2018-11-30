func! myspacevim#before() abort
    "============================================================
    "============================================================
    " @@@ vim-autoformat.vim
    "============================================================
    noremap <silent> <F4> :Autoformat<CR>
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
    " let g:clang_library_path='/usr/lib/llvm-3.8/lib/libclang.so.1'

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
    nnoremap dw diw
    nnoremap Q @q
    nnoremap <silent> <Esc><Esc> :set hlsearch!<Cr>
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
    inoremap <C-K>i ->
    inoremap <C-K>l <Esc>o<Esc>cc
    nnoremap <C-k>s :w<Cr>
    inoremap <C-k>; <End>;

    "============================================================
    "============================================================
    " 外观
    "============================================================
    " set guicursor=i:ver25-iCursor
    set conceallevel=3

    "============================================================
    "============================================================
    " @@@ Deoplete
    "============================================================
    " let g:spacevim_autocomplete_method = 'YouCompleteMe'
    let g:spacevim_autocomplete_method = 'deoplete'
    let g:deoplete#enable_at_startup = 1

    "============================================================
    "============================================================
    " @@@ Deoplete-Clang2
    "============================================================
    let g:clang_library_path = '/usr/lib/llvm-3.8/lib/libclang.so.1'
    " let g:deoplete#sources#clang#flags = ['-Iwhatever', ...]
    let g:deoplete#sources#clang#executable = '/usr/bin/clang'
    let g:deoplete#sources#clang#autofill_neomake = 1
    " let g:neomake_<filetype>_enabled_makers = ["clang"]
    let g:neomake_c_enabled_makers = ["clang"]
    let g:neomake_cpp_enabled_makers = ["clang"]


    "============================================================
    "============================================================
    " @@@ YouCompleteMe
    "============================================================
    let g:spacevim_enable_ycm = 1
    " let g:spacevim_autocomplete_method = 'YouCompleteMe'
	let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
    let g:ycm_confirm_extra_conf = 0 "关闭加载.ycm_extra_conf.py提示
    "-----------"
    let g:ycm_add_preview_to_completeopt = 0
    let g:ycm_autoclose_preview_window_after_completion = 0
    let g:ycm_autoclose_preview_window_after_insertion = 1
    let g:ycm_show_diagnostics_ui = 0
    let g:ycm_cache_omnifunc=0                      " 禁止缓存匹配项,每次都重新生成匹配项
    let g:ycm_warning_symbol = '*>'
    "-----------"
    autocmd InsertLeave * if pumvisible() == 0|pclose|endif    "离开插入模式后自动关闭预览窗口
    inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
    "上下左右键的行为 会显示其他信息
    inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
    inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
    inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
    inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
    "-----------"
    let g:ycm_semantic_triggers =  {
            \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
            \ 'cs,lua,javascript': ['re!\w{2}'],
            \ }
endf
