
""""""""""""""""""""""""""""""""""""""""
" VIM快捷鍵設置

function Hotkeys()
    " <C-o><C-i> 回退以及追進光標位置

    " Leader鍵
    let mapleader='\'
    let g:mapleader = '\'

    " 基本操作
    nmap <leader>q :q<cr>
    nmap <leader>w :w<cr>

    " 切換buffer
    nmap <C-n> :MBEbn<cr>
    nmap <C-p> :MBEbp<cr>
    nmap <leader>d :MBEbd<cr>
    "nmap <C-n> :bn<CR>
    "nmap <C-p> :bp<CR>
    "nmap <leader>d :bd<CR>

    " NERDTree快捷鍵
    "nmap <leader>e :NERDTreeToggle<CR>

    " 窗口操作
    nmap <leader>v <C-w>v
    nmap <leader>s <C-w>s

    nmap <C-l> <C-w>l
    nmap <C-h> <C-w>h
    nmap <C-j> <C-w>j
    nmap <C-k> <C-w>k

    " 去除搜索後留下的高亮
    nmap <leader>/ :nohl<cr>

    " 粘貼模式
    set pastetoggle=<F5>

    " 寄存器優化

        " 利用寄存器
        nmap <leader>y "ry
        nmap <leader>p "rP

    " 自动注释
    vmap / \c<space>
    nmap // \c<space>

    " 分屏幕同步滾動
    nmap <leader>b :call g:ToggleScrollBinding()<cr>

    " 插入命令的輸出
    " 例如：
    "   1.輸入date則插入時間
    "   2.輸入cal則插入日曆
    "   3.輸入ls則插入當前目錄下的文件列表
    nmap <leader>r :read!

    " 文件管理器快捷鍵
    " %     create a new file
    " d     create a new directory
    " R     rename the file/directory
    " D     Delete the file/directory
    nmap <leader>e :call g:ToggleExplore()<cr>

    " Git相關
    nmap <leader>g :!git 
    nmap <leader>gc :!git add -A && git commit -a<cr>
    nmap <leader>gp :!git push<cr>
    nmap <leader>gs :!git status<cr>

    " 輸出模板
    nmap <Leader>t :call g:RenderTemplate()<cr>

endfunction
call g:Define('Hotkeys', ['Base', 'Bundle', 'Utils', 'Netrw'], function('Hotkeys'))


" End
""""""""""""""""""""""""""""""""""""""""
