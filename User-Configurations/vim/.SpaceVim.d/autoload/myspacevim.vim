func! myspacevim#before() abort
    "============================================================
    "============================================================
    " Appearance
    "============================================================
    " set guicursor=i:ver25-iCursor
    set conceallevel=3
    set scrolloff=6
    nnoremap <silent> <M-s> :set laststatus=0<Cr>
    let g:spacevim_statusline_left_sections =
                \ [
                \ 'winnr',
                \ 'filename',
                \ 'major mode',
                \ 'minor mode lighters',
                \ 'version control info'
                \ ]
    let g:spacevim_statusline_right_sections =
                \ [
                \ 'fileformat',
                \ 'cursorpos',
                \ 'percentage',
                \ 'time'
                \ ]

    "============================================================
    "============================================================
    " @@@ vim-autoformat.vim
    "============================================================
    noremap <silent> <F4> :Autoformat<CR>
    " au BufWrite * :Autoformat "formatted upon saving file
    let g:autoformat_retab = 1
    let g:autoformat_remove_trailing_spaces = 1

    " 大小写关键
    let g:formatdef_custom_c='"clang-format-6.0 -style=file"'
    let g:formatters_c = ['custom_c']
    let g:formatters_cpp = ['custom_c']

    "============================================================
    "============================================================
    " @@@ tagbar
    "============================================================
    nnoremap <silent> <F9> :TagbarToggle<CR>


    "============================================================
    "============================================================
    " @@@ YouCompleteMe
    "============================================================
    let g:spacevim_enable_ycm = 1
    let g:spacevim_autocomplete_method = 'YouCompleteMe'
	let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
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
    " 很关键的设置，不然没办法识别本地函数
    let g:ycm_semantic_triggers =  {
            \ 'c,cpp,python': ['re!\w{2}'],
            \ }
    let g:ycm_filetype_specific_completion_to_disable = {
      \ 'gitcommit': 1,
      \ 'go': 1,
      \ 'java': 1,
      \ 'python': 1
      \}

    "============================================================
    "============================================================
    " @@@ Complete-parameter
    "============================================================
    let g:complete_parameter_use_ultisnips_mapping = 1
    let g:complete_parameter_py_keep_value = 2
    let g:neosnippet#disable_select_mode_mappings = 0
    inoremap <silent><expr> ( complete_parameter#pre_complete("()")
    smap <M-j> <Plug>(complete_parameter#goto_next_parameter)
    imap <M-j> <Plug>(complete_parameter#goto_next_parameter)
    nmap <M-j> <Plug>(complete_parameter#goto_next_parameter)
    smap <M-k> <Plug>(complete_parameter#goto_previous_parameter)
    imap <M-k> <Plug>(complete_parameter#goto_previous_parameter)
    nmap <M-k> <Plug>(complete_parameter#goto_previous_parameter)
endf

function! myspacevim#after() abort
    "====================================================
    " 基本操作
    "====================================================
    set mousemodel=extend       " 设置鼠标功能
    set autochdir               " 将当前目录自动切换为文件所在目录
    set autoindent              " 继承前一行的缩进方式，
                                " 特别适用于多行注释
    set ignorecase
    set smartcase               " 智能搜索
    set incsearch               " 搜索并且异步显示
    set smartindent             " 打开智能缩进
    set noshowmode
    set fo-=r


    "====================================================
    " &&& 快捷键重置
    "====================================================

    nnoremap L $
    nnoremap H ^
    onoremap L $
    onoremap H ^
    vnoremap L $
    vnoremap H ^

    " nnoremap j gj
    " nnoremap k gk
    nnoremap y "+y
    vnoremap y "+y
    nnoremap z cl
    "============================================================
    " &&& 简化
    nnoremap cw ciw
    nnoremap dw diw
    nnoremap Q @q
    nnoremap <silent> <Esc><Esc> :set hlsearch!<Cr>
    nnoremap '' ``
    iunmap jk
    "============================================================
    " &&& 新的快捷键

    "============================================================
    " &&& Ctrl
    "============================================================
    nnoremap <C-c>s :%s/\<<c-r>=expand("<cword>")<cr>\>\C/
    inoremap <C-d>a this->
    snoremap <C-d>a this->
    inoremap <C-d>t <t>
    inoremap <C-d>d std::

    inoremap <c-l> <right>
    snoremap <c-l> <Esc><right>

    inoremap <C-k>[ <End><Space>{<Cr>}<Left><Cr><Up><Tab>
    inoremap <C-K>i ->
    inoremap <C-K>l <Esc>o<Esc>cc
    nnoremap <C-a>s :w<Cr>
    nnoremap <C-a>c :%y+<Cr>
    nnoremap <C-a>d :%d<Cr>
    inoremap <C-k>; <End>;
    inoremap <C-d>n !=

    nnoremap <C-j> 8jzz
    nnoremap <C-k> 8kzz
    vnoremap <C-j> 8jzz
    vnoremap <C-k> 8kzz

endf
